= Hauptteil

== System Architektur
Für die Entwicklung, wurde auf neusten Technologien aus dem Web-Bereich zurück gegriffen. Beispielsweise wurde das gerammte User Interface
mit Rect, getragen von einer Electron Anwendung Entwickelt. #linebreak()
Dies erlaubt einen höhnen grad der Betriebssystemunabhängigkeit, und gleichzeitig, einen hohen Entwicklungskomfort, 
da auf so genannten Component library's zurückgegriffen werden kann. #linebreak()
Um den zugriff auf die native API der Kvasa Can Interfaces in Javascript zu erlangen, war es von Nöten, eine so genannte Node-native
library zu entwickeln. Node-Native erlaubt es C bzw. C++ Code so zu moderieren, dass es für das NodeJs Framework wie eine normale TS library
aussieht. #linebreak()

=== Abstraktion der Kvasa API
Um eine Reibungslose Integration in das Node Ökosystem zu gewehrleisten, wurden nur die Tatsächlichen API Calls (Also zum beispiel schreiben einer Nachricht)
Abstrahiert, die Erfüllung des Paradigmas der Objektorientierung wurde danach mittels TypeScript realisiert. #linebreak()
Zudem lauft eine eigenständiger C++ Thread, der sich um das empfangen von Nachrichten kümmert. Diesem wird ein JS Callback übergeben,
der jedes mal aufgerufen wird wen eine Can-Bus Nachricht empfangen wird.

== Zusätzliche Tools

=== NPM
  NPM oder auch der Node Paket Manager, ist ein tool um Node Pakete zu installieren, und im zusammenhang mit NPX (dem Node Paket Executor) auch auszuführen.
  Ein Node Paket ist meist ein Kleines Stück Code, das als Bibliothek fungieren kann, und somit Funktionalitäten im aktuellen Projekt Nachrüsten kann. Im ApolloLink Projekt kommt NPM fast überall zum Einsatz, zb um SchadCn zu installieren und verwalten (Was das Komponenten-Framework ist, womit die UI realisiert wurde). 

=== Visual Studio CLI tools
  Um den Nativ teil zu Kompilieren empfiehlt Node die Visual Studio CLI suit. Dabei handelt es sich um alle Tools die normalerweise mit Visual Studio 2022 ausgeliefert werden, nut ohne die dazu gehörige IDE. In der Regel kann man diese CLI automatisch mit der Installation von NodeJs mitlaufen lassen, allerdings erwies sich dies als aufwändiger als gedacht. #linebreak()
  Nachdem einige Programme gelöscht und neu Installiert wurden, ließ sich aber auch die CLI problemlos aufsetzen, und hat ab da tadellos mit Node udn C++ zusammengespielt.   

== IDE Wahl und aufsetzen jener
  Die Wahl der IDE(s) ist, nach kurzer überlegung, auf die Produkte von JetBrains gefallen. Der Hauptgrund dafür war meine jahre lange Erfahren mit genau diesen Produkten, da JetBrains der Marktführer ist, auch im Professionellen Umfeld verwendet wird. Nachführend wurden nocheinmal die spezifischen IDEs, auf die schlussendlich die Wahl gefallen ist, erläutert.   

=== Für Node Native (C)
  JetBrains Lösung für den C Stack nennt sich CLion. Dabei handelt es sich im eine hooch performante IDE. Installiert wurde dieses Tool über die so genante JetBrains Toolbox. Diese ist ein Client, der das Installieren und Konfigurieren übernimmt.  
  Um das die C Codebase perfekt zu organisieren, und voraltem damit damit das Code-Highlighting funktioniert, war es nötig Node-Cmake via NPM zu installieren.
  #linebreak()
  Kompiliert wird der gesamte Nativ-teil mit dem so genanten Node-GYP Tool. Selbiges würde ebenfalls über NPM Installiert und bildet die Schnittelle zum Visual Studio 2022 Compiler. Node-GYP kümmert sich dabei darum das alle Dependencies die die spätere NodeJs runtime benötigt inkludiert sind, und das die NAPI header richtig sind. #linebreak()
  NAPI ist die sogenannte Node-API. Sie wird darüber genutzt damit der Native Teil auch mit späteren Versionen der NodeJs Runtime kompatibel ist.

=== Für React (TypeScript)
  Um eine Einheitliche Linen im bezug auf die Werkzeug-wahl zu halten, fiel die Wahl für den Web-teil ebenfalls auf ein JetBrains Produkt. In diesem fall allerdings auf WebStorm. Dabei handelt es sich ebenfalls um ein Hochperformantes System, das sehr Hilfreiche Funktionen für den umgang mit den neusten Web Trends bieted. Zum beispiel ist das gesamte Node (NPM, NPX) Ökosystem tief verankert und funktioniert Einwandfrei.

// #lorem(6000)