#import "../templates/acronyms.typ": acr

= Vertiefungsteil
Für den vertiefungsteil habe mir das Thema "Entwicklung einer Nativen Anwengung mittels React, Electron und C++" gewäht,
da es sich um eines der Haupt Thmemen in dieser Arbeit handelt.

Die Haupt Architektue Zeichent sich dadurch aus, dass eine Mittels React Entwikelte User Oberfläche,
mit einem Teil komuniziert der mit der Kvaser Hardware Komuniziert.
Alternativ gäbe es auch den Ansatz das UserInterface mittels enem System Nahmens React-Native zu Entwickeln.
Dagen wurde sich allerdings entscheiden, da einie wichtige Funtionalitäten der #acr("JS") Sprache nocht nicht einwandfrei unterstütz werden, und somit viele Aspekte im Code Schwiriger gestalten würden.
Zudem ist die Ausgewälte component #acr("LIB") noch nicht für React-Native Verfügbrar, bezihungsweise Stellten sich in einer Kurzen Testphase Masive Kompatibilitätsprobleme heraus.
Eine Weitere Alternative Wäre gewesen, anstadt von C++ ein "Backend" mit C Schap zu bauen.
Zu diesem Ansatz wurden im Vorhinein auch intensive Rescherchen betrieben. Diese haben Ergeben, dass es zu masicgen Performence verlusten kommen kann, worallem wen viele nachrichten zwischen dem #acr("JS") Teil und dem Backend ausgetauscht werden müsssen.
Da dies die Hauptaufgabe ist, ist dieser Performanceeinbruch absolut nicht Tolarable.


== Electron, Funationalitäten und Arbeitsweise
Da, wie bereits beschriben aus Performace gründen die wähl auf Reines React gefallen ist,
kann dies nur mittels einem Electron Wrapper ermöglocht werden.
Electron agiert ans dieser Stelle Ählin eines Webbrowsers, in dem das Userinterface ählich einer normalen Webseite Angezeigt wird.
Dies wird ermöglicht indem Electron von haus aus mit seiner einen Copie von Chrome kommt.
Dies hat den vorteil, dass das Fertigee Programm nicht auf andere vor Intsatierte Programme angewiesen ist.
Leider wird aber dann in jeder mittels Electron Entwickelten Anwendung ein Komplettes paket von Chrome ausgeliefert, was die Fertige EXE doch sehr groß macht.
Zudem kommt nocht Hinzu das Chrome bekannt für seinen Hohen SpeicherBedarf ist, und somit auch nicht perfekt auf Schwächren Systemen Lauft.
Electron ist aber nicht nur das im Browser Angezeigte Frontend, sondern auch die komplette NodeJS Umgebung, die es erlaubt die komplette Backend Logik im gleichen Programm Mitlaufen zu lassen.
Im besonderenist in diesem Projekt die Kopatität mit Node-Native Wichtig, das seit 2020 Standardmäsig in Electron gegeben ist.
Mittels der NAPI APi lassen sich ganz normale Node-native Module Einbinden, allerdings müssend dise natürlich auf die Ziehl archtitektue angepasst werden.
Genauer wird auf die Entwicklung des Nativ Tiel in einem Späteren Kapitel einegangen.
Die Kommunikation Zwichen dem Frontedn und Backend kann auf zwei weisen Erreicht werden,
eienrseits können Daten wie Gewohnt mittels REST abgefragt werden, oder mittels Psziellen #acr("IPC") nachrichten.
REST hat einige Nachteile, einerseits ist dieses Protokoll nur darauf ausgelegt dass sich die Datan Geholt werden,
zum anderen hat man auf Grund der Komunikation einen doch erheblichen Flschenhalseffekt.
Daher ist die Wahl auf einer Datenübertragung mittels #acr("IPC") gefallen.
Dabei werden Späzielle so genannte "Inter Process Communication" Paktete vom Backende Geschickt.
Dise werden Darauf hin Von einem Hook Im #acr("JS") aufgefasst und verarbeited.
Die Verarbeitung gestllted sic darin, dass man für jede #acr("IPC") Addresse eine Funtion Angiebt,
die aufgerufen werden soll, sobald eine Nachrich mit diesm Typ dedektirt wurde.

#pagebreak()
== Laufwege in der WebApp und Electron
Grundlegend besteht die Aufgabe darin, ein sogennantes #acr("CAN") Daten Paket zu empfangen, und dieses dann anzuzeigen.
Ein solches Paket ist wie folgt aufgebaut:
#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: left,
    table.header([*Field*], [*Length (bits)*], [*Description*]),
    [Identifier],
    [11 (Standard) / 29 (Extended)],
    [Bestimmt die wichtigkeit und priorität.],

    [RTR (Remote Transmission Request)],
    [1],
    [Zeigt an, ob es sich um einen Daten-Frame oder einen Remote-Frame (Anforderung von Daten) handelt.],

    [IDE (Identifier Extension Bit)],
    [1],
    [Bei erweiterten Rahmen wird dieses Bit auf 1 gesetzt.],

    [#acr("DBC") (Data Length Code)],
    [4],
    [Gibt die Länge des Datenfeldes an (in Bytes, 0-8 Bytes).],

    [Data],
    [0–64 (0–8 bytes)],
    [Die tatsächlich übertragenen Daten (maximal 8 Byte).],

    [CRC (Cyclic Redundancy Check)],
    [15],
    [Fehlererkennungscode (wird für die Fehlerprüfung verwendet).],
  ),
)
Das Empfangen dieser Frames wird schon vom C++ Native Teil Übernommen. Sobald ein solcher Frame Fertig Empfangen wurde,
wird er in eine JSON Struktur umwandeln, welcha dann an einen #acr("JS") Handler übergeben wird. Dieser Handler kümmert sich darum,
dass an den jeweiligen stellen and denen die Daten benötigt werden, diese auch vorliegen. Hauptsächlich handelt es sich um die Sogennaten View Tiles,
Welche im Dashboar frei konfiguerreibar angeortet werden können.
Sobald ein Solche Tile Benachrictigt wurde, dass Daten zu verfügung stehen, wird anhand einer so gennanten #acr("DBC") Datei Enschieden,
Welche Datenschipsel wirklich wichtig sind. Wen eine Filterung Konfigueriert ist, Wird über (je nach Einstellung 2-10) die Datenwwerte das Arethmetisch Mittel gebildet,
und diese dann angezeigt.
Eine #acr("DBC") Datei beschreibt hierbei den Aufbau, und die bedeutung der einzelnen Bits, und verleit ihnen danns schlussentlich die Bneötigte bedeutung.
Diese Dateien könne in einem Seperaten Tap verwalted werden, und stehen danach überall in der App zu verfügung.

== Nativer C++ Code
Der C++ Teil des Systemes ist quasi das Hertszück des Systemes.
Er kümmert sich um das Empfangen der Nachrichten via der vor Kvaser bereit geestllten #acr("API").
Bei Kvaser handelt es sich neven Vektor um einen der größten Hersteller von #acr("CAN")-Bus zu USB Adaptern,
und daher sidn diese Interfaces auch stark in der Industri vertreten.
Es gibt zudem auch einige Alternativen die vollständig OpenSource sind,
allerdings sind die dann offtmals nicht so gut Supported, was in einem Business Context nicht tragbar ist.
Kvaser stellt für jeesde ihrer Prdoke eine sehr gut Dokumentierte #acr("API") zur verfügung, mittesl der es Möglich ist #acr("CAN")-Bus Nachrichten zu senden und Empfangen.
Der die Verarbeitung lauft volgender maßen ab: #linebreak()
Zuerst wir beim System Teiber nachgefragt welche Interfaces verbunden sind, und was deren jeweilige verfügbarkeitszustand ist.
Beispilshabt kann ein Donle schon vom Windows Teiber erkannt worden sein, aber schon von einem Anderen Programm verwendet werden.
Diese Interfaces dürden natürlich nicht verwendet werden. #linebreak()
Sollte ein Donge erkannt worden sein, der nicht andersweitig in verwendung ist, so wied dieser vom ApolloLink beseetzt und Vorkonfugueriert.
Bei diesem Prozess wird ein sogennater Hook gestzt, was so viel bedeuted wie das eine Funktion angegeben wird wie bei jeder empfanngeegen Nachrift aufgerufen wird.
Dabei werden auch alle Empfangennen Daten, also nachrict #acr("ID"), #acr("DBC"), der Timestamp, und am wichtigsten das Array mit den Datenbytes übergeben.
Der Empfanks Hook wandelt den Empfangen Datensatz dann in ein #acr("JS") Objekt um, welchen darauf mittels #acr("IPC") and das Frontend übermittelt wird. #linebreak()
Wen Daten zum Senden bereit stehen, wird das #acr("JS") Objekt zerlegt und an die Sende Funtion der Kvaser #acr("API") übergeben.
Der tadsächlische sende Prozess lauft dann Asycron und voll automatisch ab. Sobald also ein Slot auf dem Pysischen bus zu verfügung steht, wird der #acr("CAN") Frame gesendet.
#linebreak()
#linebreak()
Im C++ Kern werden aber nur die Funtionalitäten der Kvaser #acr("API") soweit Absatakert, das es später auch möglich sein wird andere Interfaces zu unterstützen.
Die tadsächlische einteilungen in Logische objekte wir mittels #acr("TS") realisert, da dadurch einene Integration in das Große System stark vereinfacht wird.
Alles zusammen wird in einem Node Pakt ausgeliefert, welche schon für die gängisten Betriebessteme und Architekurten Vorkopilerit wurde, was eine einbundungs sehr Angemen gestalted.
Für die Electron Anwändun sieht das gesmmte Paket aus wie jedes andere Node Paket.
