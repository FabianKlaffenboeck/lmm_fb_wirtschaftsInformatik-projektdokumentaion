= Vertiefungsteil
Für den vertiefungsteil habe mir das Thema "Entwicklung einer Nativen Anwengung mittels React, Electron und C++" gewäht,
da es sich um eines der Haupt Thmemen in dieser Arbeit handelt.

Die Haupt Architektue Zeichent sich dadurch aus, dass eine Mittels React Entwikelte User Oberfläche,
mit einem Teil komuniziert der mit der Kvaser Hardware Komuniziert.
Alternativ gäbe es auch den Ansatz das UserInterface mittels enem System Nahmens React-Native zu Entwickeln.
Dagen wurde sich allerdings entscheiden, da einie wichtige Funtionalitäten der Javascript Sprache nocht nicht einwandfrei unterstütz werden, und somit viele Aspekte im Code Schwiriger gestalten würden.
Zudem ist die Ausgewälte component Library noch nicht für React-Native Verfügbrar, bezihungsweise Stellten sich in einer Kurzen Testphase Masive Kompatibilitätsprobleme heraus.
Eine Weitere Alternative Wäre gewesen, anstadt von C++ ein "Backend" mit C Schap zu bauen.
Zu diesem Ansatz wurden im Vorhinein auch intensive Rescherchen betrieben. Diese haben Ergeben, dass es zu masicgen Performence verlusten kommen kann, worallem wen viele nachrichten zwischen dem JavaScript Teil und dem Backend ausgetauscht werden müsssen. 
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
eienrseits können Daten wie Gewohnt mittels REST abgefragt werden, oder mittels Psziellen IPC nachrichten.
REST hat einige Nachteile, einerseits ist dieses Protokoll nur darauf ausgelegt dass sich die Datan Geholt werden,
zum anderen hat man auf Grund der Komunikation einen doch erheblichen Flschenhalseffekt.
Daher ist die Wahl auf einer Datenübertragung mittels IPC gefallen.
Dabei werden Späzielle so genannte "Inter Process Communication" Paktete vom Backende Geschickt.
Dise werden Darauf hin Von einem Hook Im javasript aufgefasst und verarbeited.
Die Verarbeitung gestllted sic darin, dass man für jde IPC Addresse eine Funtion Angiebt,
die aufgerufen werden soll, sobald eine Nachrich mit diesm Typ dedektirt wurde.


== Laufwege in der WebApp und Electron
#lorem(500)

== Nativer C++ Code
#lorem(500)

== Kommunikation mit der Kvasa API
#lorem(500)

== Verarbeitung der Daten innhalb von JavaScript
#lorem(500)

== Performence und Speicherbedarf
#lorem(500)

== Erstellung der fertigen Anwendung und Auslieferung
#lorem(500)

