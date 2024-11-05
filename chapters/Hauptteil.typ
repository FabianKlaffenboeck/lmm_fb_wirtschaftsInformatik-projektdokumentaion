= Hauptteil

== System Architektur
// TODO

== Zusätzlichte Tools

=== NPM
  NPM oder auch der Node Paket Manager, ist ein tool um Node pakete zu instalieren, und im zusammenhang mit NPX (dem Node Paket Executor) auch auszuführen.
  Ein Node Paket ist meist ein Kleines stück Code, das als bibliotek fungieren kann, und somit Funtionalitäten im aktuellen Projekt Nachrüsten kann. Im ApolloLink Proket kommt NPM fast überall zum Einsatz, zb um SchadCn zu instaieren und verwalten (Was das komponenten Framework ist, womit die UI realisrt wurde). 

=== Visual Studio CLI tools
  Um den Nativ teil zu komponenten empielt Node die Visual Studio CLI suit. Dabei ahndelt es seich um alle Tools die normalerweise mit VisualStusio 2022 ausgeliefert werden, nut ohne die dazu geörige IDE. In der Regel kann man diese CLI automatisch mit der Instaltion Con NodeJs mitlafen lassen, allerding erwies sich dies als aufwändiger als gedacht. #linebreak()
  Nachdem einige Programme gelöcht und neu Instaliert wurden, ließ sich aber auch die CLI problemlos aufsetzen, und hat ab da tadellos mit Node udn C++ zusammengespielt.   

== IDE Wahl und aufsetzen jener
  Die Wahl der IDE(s) ist, nach kurzer überlegung, auf die Produkte von JetBrains gefallen. Der Haupt grund dafür war meine jahre lange Erfahren mit genau diesen Produkten, da JetBrains der Marktführer ist, auch im Professionellen Umfeld verwendet wird. Nachführend wrden nocheinmal die spezifischen IDEs, auf die schlussentlich die Wahl gefallen ist, erleutert.   

=== Für Node Native (C)
  JetBrains Lösung für den C Stack nennt sich CLion. Dabei handelt es sich im eine hooch perfomante IDE. Instaleirt wurde dieses Tool über die so genante JetBrains Toolbox. Diese ist ein Client, der das instalieren und Konfigureiren übernimmt.  
  Um das die C Codebase perfekt zu organisieren, und vorallemdamit damit das Dode-Highlighting funtionirt, war es nötig Node-Cmake via NPM zu instalieren.
  #linebreak()
  Kompiliert wird der gesamte Nativ-teil mit dem so gennaten Node-GYP Tool. Selbiges würde ebenfals über NPM Instaleirt und bildet die Schnitstelle zum Visual Studio 2022 Compiler. Node-GYP kümmert sich dabei darum das alle Dependencies die die spätere NodeJs runnteime benötigt inklitiert sind, und das die NAPI header richtig sind. #linebreak()
  NAPI ist die sogenante Node-API. sie wird darür genutz damit der Native Teil auch mit späteren versionen der NodeJs Runnteime kompatibel ist.

=== Für React (TypeScript)
  Um eine Einheitliche Linen im bezug auf die Werkzeig Wahl zu halten, fiel die Wahl für den Web-teil ebenfals auf ein JetBrains produkt. In diesem fall allerding auf WebStorm. Dabei handelt es sich ebenfals um ein Hochperfomates System, das sehr Hilfreiche Funtionen für den umgang mit den neusten Web Trends bieted. Zum beispiel ist das gesamte Node (NPM, NPX) Ökosystem tief Verankrt und funtionirt Einwandfrei.

// #lorem(6000)