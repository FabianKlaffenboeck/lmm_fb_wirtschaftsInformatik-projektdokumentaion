#import "../templates/acronyms.typ": acr

= Hauptteil

== Geplante Anwendung
Da es sich bei ApolloLink um ein Werkzeug zur viauslierung von #acr("CAN")-Bus Daten handelt, muss ein unterstütztes Hardware Interfacce verwendet werden.
Die aufgabe dieses Interfaces ist es, die Elektronischen Daten von #acr("CAN") auf USB zu wandeln,
damit dise auch vom Angeschlossenenen Computer oder Laptop verstanden werden können.
In ApolloLink ist es möglich jedem Interface eine odere mehrere so gennate Nodes zugewiesen werden, wobei jede Node eine Sterergerät oder der gleichen darrstellt.
Jede Node Hat wiederum eine so genanted #acr("DBC") datei zugewiesen, wodurch es möglich wird die signale die gesendet werden zu verstehen, und spätter zu visualieren.
Eine #acr("DBC") datei ist somit nur als "Wörterbuch" anzusehen das es erlaubt zu verstehen welche signale wie gesendet werden.
In der Dashboard Ansicht können dann einzelne Signale ausgewählt und grafisch dargestellt werden.

== System Architektur
Für die Entwicklung, wurde auf neusten Technologien aus dem Web-Bereich zurück gegriffen. Beispielsweise wurde das gerammte User Interface
mit Rect, getragen von einer Electron Anwendung Entwickelt. #linebreak()
Dies erlaubt einen höhnen grad der Betriebssystemunabhängigkeit, und gleichzeitig, einen hohen Entwicklungskomfort,
da auf so genannten Component #acr("LIB") zurückgegriffen werden kann. #linebreak()
Um den zugriff auf die native #acr("API") der Kvasa #acr("CAN") Interfaces in #acr("JS") zu erlangen, war es von Nöten, eine so genannte Node-native
#acr("LIB") zu entwickeln. Node-Native erlaubt es C bzw. C++ Code so zu moderieren, dass es für das NodeJs Framework wie eine normale TS library
aussieht. #linebreak()

=== Abstraktion der Kvasa #acr("API")
Um eine Reibungslose Integration in das Node Ökosystem zu gewehrleisten, wurden nur die Tatsächlichen #acr("API") Calls (Also zum beispiel schreiben einer Nachricht)
Abstrahiert, die Erfüllung des Paradigmas der Objektorientierung wurde danach mittels #acr("TS") realisiert. #linebreak()
Zudem lauft eine eigenständiger C++ Thread, der sich um das empfangen von Nachrichten kümmert. Diesem wird ein JS Callback übergeben,
der jedes mal aufgerufen wird wen eine #acr("CAN")-Bus Nachricht empfangen wird.

== Zusätzliche Tools

=== #acr("NPM")
#acr("NPM") oder auch der Node Paket Manager, ist ein tool um Node Pakete zu installieren, und im zusammenhang mit #acr("NPX") (dem Node Paket Executor) auch auszuführen.
Ein Node Paket ist meist ein Kleines Stück Code, das als Bibliothek fungieren kann, und somit Funktionalitäten im aktuellen Projekt Nachrüsten kann. Im ApolloLink Projekt kommt #acr("NPM") fast überall zum Einsatz, zb um SchadCn zu installieren und verwalten (Was das Komponenten-Framework ist, womit das #acr("UI") realisiert wurde).

=== Visual Studio #acr("CLI") tools
Um den Nativ teil zu Kompilieren empfiehlt Node die Visual Studio #acr("CLI") suit. Dabei handelt es sich um alle Tools die normalerweise mit Visual Studio 2022 ausgeliefert werden, nut ohne die dazu gehörige #acr("IDE"). In der Regel kann man diese CLI automatisch mit der Installation von NodeJs mitlaufen lassen, allerdings erwies sich dies als aufwändiger als gedacht. #linebreak()
Nachdem einige Programme gelöscht und neu Installiert wurden, ließ sich aber auch die #acr("CLI") problemlos aufsetzen, und hat ab da tadellos mit Node udn C++ zusammengespielt.

== #acr("IDE") Wahl und aufsetzen jener
Die Wahl der #acr("IDE") ist, nach kurzer überlegung, auf die Produkte von JetBrains gefallen. Der Hauptgrund dafür war meine jahre lange Erfahren mit genau diesen Produkten, da JetBrains der Marktführer ist, auch im Professionellen Umfeld verwendet wird. Nachführend wurden nocheinmal die spezifischen IDEs, auf die schlussendlich die Wahl gefallen ist, erläutert.

=== Für Node Native (C)
JetBrains Lösung für den C Stack nennt sich CLion. Dabei handelt es sich im eine hoch performante #acr("IDE"). Installiert wurde dieses Tool über die so genante JetBrains Toolbox. Diese ist ein Client, der das Installieren und Konfigurieren übernimmt.
Um das die C Codebase perfekt zu organisieren, und voraltem damit damit das Code-Highlighting funktioniert, war es nötig Node-Cmake via #acr("NPM") zu installieren.
#linebreak()
Kompiliert wird der gesamte Nativ-teil mit dem so genanten Node-GYP Tool. Selbiges würde ebenfalls über #acr("NPM") Installiert und bildet die Schnittelle zum Visual Studio 2022 Compiler. Node-GYP kümmert sich dabei darum das alle Dependencies die die spätere NodeJs runtime benötigt inkludiert sind, und das die NAPI header richtig sind. #linebreak()
NAPI ist die sogenannte Node-API. Sie wird darüber genutzt damit der Native Teil auch mit späteren Versionen der NodeJs Runtime kompatibel ist.

=== Für React #acr("TS")
Um eine Einheitliche Linen im bezug auf die Werkzeug-wahl zu halten, fiel die Wahl für den Web-teil ebenfalls auf ein JetBrains Produkt. In diesem fall allerdings auf WebStorm. Dabei handelt es sich ebenfalls um ein Hochperformantes System, das sehr Hilfreiche Funktionen für den umgang mit den neusten Web Trends bieted. Zum beispiel ist das gesamte Node (#acr("NPM"), #acr("NPX")) Ökosystem tief verankert und funktioniert Einwandfrei.

== #acr("CICD") Pipeline
Um die qualität des Codes zu haren, und dauernd zu überprüfung wurde entschieden auf eine #acr("CICD") Pipeline, implementiert in GitLab, zu setzen.
#linebreak()
Insgesammt giebt es 5 wichtige Abschnitte:
#list([Linting], [Testing], [NodeGyp bauen], [Electron bauen], [React App bauen])

#pagebreak()

=== Linting
In deisem Schritt werden die sehr srengen Regeln, die and die Code Qualität gestellt werden überprüft. Besplieslweise dürfen keine Variablen defineirt werden, die nicht werwendet werden. Zudem gibt es eine regel die "cont" priorisirt, was bedeuted das aich die Sicherheit im Code erhöt wird, da es schwiriger wird ungewollt auf Variablen zuzugreifen und deise zu verändern.

=== Testing
Natürlich gehören zur feststellung einer guten code-qualität auch tests, die ebenfalls bei jedem Commit ausgeführ werden. Um resourcen bei der Entwichlung zu sparen wurde auf teifer legende test verzichted. Die Tests beschränken sich derzeit nur auf speichersicherheit, vorallem in C++ Node-native Teil.

=== NodeGyp bauen
Da es sich bei NodeNative im zusammenhang mit NAPI und NodeGyp um den Betroebssystem spezifischen Teil handelt, muss deiser teil auch aum dem ziel OS gebaut werden.
Da es sich bei miener GitLab Infrastruktur alerding ausschließlich um Docker Executor handelt, werwieß sich deis als recht Zeitintensef. Die lösung war, den build Schritt in eienm Docker Container mittels der Linux Kompatiblitätschicht "WINE" auszulagern. Daruch wird eien Wirdowsn umgebung vorgegaukelt, obwohl esigentlich Ein UNIX System verwendet wird.

=== React App bauen
Die Pipeline um die haupt app zu bauen besthet aus Volgenden Schritten: #acr("NPM") Pakete Herunterladen, TSX laufen lassen und einse fertige Single page application mittels Rollup Kompilieren lassen. #linebreak()
Rollup kümmert sich dabie mittels Treeshaking Algorythmus darum das die Codebase auf ein minimum zusammengekürtz wird, und Code der durch den Kompierschritt unnötig generiert wurde, wirder entfert wird.

=== Die fertige APP mittels Electron bauen
Bei Electron handelt es sich um eine Laufzeit Umgebung die es mittels der NodeJs V8 Umgebung erlaubt Web Code (also #acr("JS") und HTML) nativ auf Windows Mac oder Linux laufen zu lassen. Zudem erlaubt dieses Framework das auch Node-Native #acr("LIB") verwendet werden künnen. Normalerweise ist die Verwendung diesen naämlich nur auf Vanilla Node beschränkt. Um sicherzustellen das die Native Librarys auch bei upgrade der Electron version problemlos verwendet werden können, wurde auf die NAPI schnitstelle gesetzt, die durch ihre hohe versionsübergreifende stabilität überzeugt.

== Schreiben der Dokumentation
Aus gründen des persönlicehn interressen sit dise gesammte dokunetation mittels dem neuen Setz-System namens typst geschrieben.
Tspst erlaubt es ein gesammted Dokument analong zu einer normalen CodeBase zu behandlen, spich dieses Dokument wurde ebenfals in einem Code Editor geschrieben, ganz ohne den einsatz von MS Word oder dergleichen.
Die vorteile leigen darin das man sich nur ein einziges mal um die Formatirung kümmern muss, und der gesammte text in der geählten formatirung in eien PDF verwandelt wird. #linebreak()
Als editor wurde VisualStioCode gewählt, da es durch ein Plugin die unterstützung der Sprache erlaubt.
Wen wieder ein abschnit geschriegen wurde, und die Änderungen aufs GitLab gepuscht werden, lauft eine automatische #acr("CICD"), die die entgülige PDF genereirt.
