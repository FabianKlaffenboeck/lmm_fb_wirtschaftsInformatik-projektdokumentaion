#import "../templates/acronyms.typ": acr

= Hauptteil

== Geplante Anwendung
Da es sich bei ApolloLink um ein Werkzeug zur Visualisierung und auslesen von #acr("CAN")-Bus Daten handelt, muss ein unterstütztes Hardware Interface verwendet werden.
Die Aufgabe dieses Interfaces ist es, die Elektronischen Daten von #acr("CAN") auf USB zu wandeln,
damit diese auch vom Angeschlossenen Computer oder Laptop verstanden werden können.
In ApolloLink ist es möglich jedem Interface eine oder mehrere so genannte Nodes zugewiesen werden, wobei jede Node eine Steuergerät oder der gleichen darrstellt.
Jede Node hat wiederum eine so genannte #acr("DBC") Datei zugewiesen, wodurch es möglich wird die Signale, die gesendet werden zu verstehen, und später zu visuelleren.
Eine #acr("DBC") Datei ist somit nur als "Wörterbuch" anzusehen, das es erlaubt zu verstehen welche Signale wie gesendet werden.
In der Dashboard Ansicht können dann einzelne Signale ausgewählt und grafisch dargestellt werden.

== System Architektur
Für die Entwicklung wurde auf neusten Technologien aus dem Web-Bereich zurückgegriffen. Beispielsweise wurde das gerammte User Interface
mit Rect, getragen von einer Electron Anwendung Entwickelt. #linebreak()
Dies erlaubt einen höhnen grad der Betriebssystemunabhängigkeit, und gleichzeitig, einen hohen Entwicklungskomfort,
da auf so genannten Component #acr("LIB") zurückgegriffen werden kann. #linebreak()
Um den zugriff auf die native #acr("API") der Kvaser #acr("CAN") Interfaces in #acr("JS") zu erlangen, war es von Nöten, eine so genannte Node-native
#acr("LIB") zu entwickeln. Node-Native erlaubt es C bzw. C++ Code so zu moderieren, dass es für das NodeJs Framework wie eine normale TS library
aussieht. #linebreak()

=== Abstraktion der Kvaser #acr("API")
Um eine Reibungslose Integration in das Node Ökosystem zu gewehrleisten, wurden nur die Tatsächlichen #acr("API") Calls (Also zum Beispiel schreiben einer Nachricht)
Abstrahiert, die Erfüllung des Paradigmas der Objektorientierung wurde danach mittels #acr("TS") realisiert. #linebreak()
Zudem lauft eine eigenständiger C++ Thread, der sich um das empfangen von Nachrichten kümmert. Diesem wird ein JS Callback übergeben,
der jedes mal aufgerufen wird wen eine #acr("CAN")-Bus Nachricht empfangen wird.

== Zusätzliche Tools

=== #acr("NPM")
#acr("NPM") oder auch der Node Paket Manager, ist ein Tool um Node Pakete zu installieren, und im Zusammenhang mit #acr("NPX") (dem Node Paket Exekutor) auch auszuführen.
Ein Node Paket ist meist ein Kleines Stück Code, das als Bibliothek fungieren kann, und somit Funktionalitäten im aktuellen Projekt Nachrüsten kann. Im ApolloLink Projekt kommt #acr("NPM") fast überall zum Einsatz, zb um SchadCn zu installieren und verwalten (Was das Komponenten-Framework ist, womit das #acr("UI") realisiert wurde).

=== Visual Studio #acr("CLI") Tools
Um den Nativ teil zu Kompilieren empfiehlt Node die Visual Studio #acr("CLI") suite. Dabei handelt es sich um alle Tools die normalerweise mit Visual Studio 2022 ausgeliefert werden, nur ohne die dazu gehörige #acr("IDE"). In der Regel kann man diese CLI automatisch mit der Installation von NodeJs mitlaufen lassen, allerdings erwies sich dies als aufwändiger als gedacht. #linebreak()
Nachdem einige Programme gelöscht und neu installiert wurden, ließ sich aber auch die #acr("CLI") problemlos aufsetzen, und hat ab da tadellos mit Node udn C++ zusammengespielt.

== #acr("IDE") Wahl und aufsetzen jener
Die Wahl der #acr("IDE") ist, nach kurzer Überlegung, auf die Produkte von JetBrains gefallen. Der Hauptgrund dafür war meine Jahre lange Erfahren mit genau diesen Produkten, da JetBrains der Marktführer ist, auch im Professionellen Umfeld verwendet wird. Nachführend wurden noch einmal die spezifischen IDEs, auf die schlussendlich die Wahl gefallen ist, erläutert.

=== Für Node Native (C)
JetBrains Lösung für den C Stack nennt sich CLion. Dabei handelt es sich im eine hoch performante #acr("IDE"). Installiert wurde dieses Tool über die so genannte JetBrains Toolbox. Diese ist ein Client, der das Installieren und Konfigurieren übernimmt.
Um das die C Code Base perfekt zu organisieren, und vor allem damit das Code-Highlighting funktioniert, war es nötig Node-Cmake via #acr("NPM") zu installieren.
#linebreak()
Kompiliert wird der gesamte Nativ-teil mit dem so genannten Node-GYP Tool. Selbiges würde ebenfalls über #acr("NPM") Installiert und bildet die Schnittelle zum Visual Studio 2022 Compiler. Node-GYP kümmert sich dabei darum das alle Dependencies die die spätere NodeJs runtime benötigt inkludiert sind, und das die NAPI header richtig sind. #linebreak()
NAPI ist die sogenannte Node-API. Sie wird darüber genutzt damit der Native Teil auch mit späteren Versionen der NodeJs Runtime kompatibel ist.

=== Für React #acr("TS")
Um eine Einheitliche Linie in Bezug auf die Werkzeug-wahl zu halten, fiel die Wahl für den Web-teil ebenfalls auf ein JetBrains Produkt. In diesem fall allerdings auf WebStorm. Dabei handelt es sich ebenfalls um ein Hoch performantes System, das sehr Hilfreiche Funktionen für den Umgang mit den neusten Web Trends bietet. Zum Beispiel ist das gesamte Node (#acr("NPM"), #acr("NPX")) Ökosystem tief verankert und funktioniert einwandfrei.



== #acr("CICD") Pipeline
Um die Qualität des Codes zu wahren, und dauernd zu Überprüfung wurde entschieden auf eine #acr("CICD") Pipeline, implementiert in GitLab, zu setzen.
#linebreak()
Insgesammt giebt es 5 wichtige Abschnitte:
#list([Linting], [Testing], [NodeGyp bauen], [Electron bauen], [React App bauen])

#pagebreak()

=== Linting
In diesem Schritt werden die sehr strengen Regeln, die and die Code Qualität gestellt werden überprüft. Beispielsweise dürfen keine Variablen definiert werden, die nicht verwendet werden. Zudem gibt es eine Regel die "cont" priorisiert, was bedeutet das auch die Sicherheit im Code erhöht wird, da es schwieriger wird ungewollt auf Variablen zuzugreifen und diese zu verändern.

=== Testing
Natürlich gehören zur Feststellung einer guten code-qualität auch Tests, die ebenfalls bei jedem Commit ausgeführt werden. Um Ressourcen bei der Entwicklung zu sparen, wurde auf tiefem liegendem Test verzichtet. Die Tests beschränken sich derzeit nur auf Speicher Sicherheit, vor allem in C++ Node-native Teil.

=== NodeGyp bauen
Da es sich bei Node-Native im Zusammenhang mit NAPI und NodeGyp um das Betriebssystem spezifischen Teil handelt, muss dieser Teil auch auf dem Ziel OS gebaut werden.
Da es sich bei meiner GitLab Infrastruktur allerdings ausschließlich um Docker Exekutor handelt, erwies sich dies als recht Zeitintensiv. Die Lösung war, den Bild Schritt in einem Docker Container mittels der Linux Kompatibilitätsschicht "WINE" auszulagern. dadurch wird ein Windows Umgebung vorgegaukelt, obwohl eigentlich ein UNIX System verwendet wird.

=== React App bauen
Die Pipeline um die Haupt-App zu bauen besteht aus Vollenden Schritten: #acr("NPM") Pakete Herunterladen, TSX laufen lassen und eines fertige Single Page Applikation mittels Rollup Kompilieren lassen. #linebreak()
Rollup kümmert sich dabei mittels Treeshaking Algorithmus darum das die Code Base auf ein Minimum zusammengekürzt wird, und Code, der durch den Kompilierschritt unnötig generiert wurde, wird er entfernt wird.

=== Die fertige APP mittels Electron bauen
Bei Electron handelt es sich um eine Laufzeitumgebung die es mittels der NodeJs V8 Umgebung erlaubt Web Code (also #acr("JS") und HTML) nativ auf Windows Mac oder Linux laufen zu lassen. Zudem erlaubt dieses Framework das auch Node-Native #acr("LIB") verwendet werden können. Normalerweise ist die Verwendung diesen naämlich nur auf Vanilla Node beschränkt. Um sicherzustellen das die Native libraries auch bei upgrade der Electron Version problemlos verwendet werden können, wurde auf die NAPI-Schnittstelle gesetzt, die durch ihre hohe versionsübergreifende Stabilität überzeugt.

== Schreiben der Dokumentation
Aus Gründen des persönlichen Interesses ist diese gesamte Dokumentation mittels des neuen Setz-Systems namens Typstgeschrieben.
Typst erlaubt es ein gesamte Dokument analog zu einer normalen Code Base zu behandeln, Spich dieses Dokument wurde ebenfalls in einem Code Editor geschrieben, ganz ohne den Einsatz von MS Word oder dergleichen.
Die Vorteile liegen darin das man sich nur ein einziges Mal um die Formatierung kümmern muss, und der gesamte Text in der gewählten Formatierung in eine PDF verwandelt wird. #linebreak()
Als Editor wurde VisualStudioCode gewählt, da es durch ein Plugin die Unterstützung der Sprache erlaubt.
Wen wieder ein abschnitt geschrieben wurde, und die Änderungen aufs GitLab gepuscht werden, lauft eine automatische #acr("CICD"), die die endgültige PDF generiert.

