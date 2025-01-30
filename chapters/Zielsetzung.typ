#import "../templates/acronyms.typ": acr

= Zielsetzung

== Projektbeschreibung und -kontext
Beginne mit einer kurzen Einführung in das Projekt und den Kontext, in dem es durchgeführt wird.
Erkläre, warum das Projekt notwendig oder wichtig ist und welches Problem es löst oder welchen Bedarf es deckt.

== Teilziele und konkrete Ergebnisse
Die Hauptziele dieser Projektarbeit sind wie folgt:

=== Erwerbung von Node-Native Kenntnissen
Da moderne Websysteme es erlauben, mit vergleichsweise wenig Aufwand eine optisch sehr ansprechende #acr("UI")/#acr("UX") zu realisieren, wird diese in Zukunft immer wichtiger. Da moderne Webtechnologie darauf basiert, dass das Interface in einer abgekapselten Sandbox (der sogenannten V8) agiert, ist es von Haus aus nicht vorgesehen, auf widerlegende Hardware zuzugreifen? Um dies allerdings zu ermöglichen, muss mittels Node-Nativedie Brücke geschlossen werden. Node-Native erlaubt es mittels der sogenannten #acr("NAPI"), C++-Code in die V8 einzubinden. Der dann wie jedes andere Node-Modul in #acr("JS") ausgeführt werden kann.

=== Entwicklung mit React/Electron
Webentwicklung ist heutzutage nicht wegzudenken und erlaubt eine denkbar einfache Erstellung von Userinterfaces. Da es allerdings nicht immer sinnvoll, geschweige denn zumutbar ist, immer eine Website aufzurufen, muss die App irgendwie „installierbar" werden. Dies wird mittels Electron ermöglicht, da die „Website" in diesem Fall mittels V8 in einer abgekapselten App angezeigt wird. Dies ermöglicht alle Techniken der Web-Welt, mit Hardwaretreibern zu integrieren.

=== Prototyp für Vector Canalyzer alternative
Marktführer ist heutzutage nicht das Programm Canalyzer der Firma Vector. Es ist aktuell neben INCA von ETAS das beliebteste Tool, um mit Canbus zu arbeiten. Allerdings verlangt Vector sehr hohe Lizenzgebühren im unteren vierstelligen Bereich pro Lizenz. und damit ist diese Tool-Landschaft kaum zugänglich für Hobbyentwickler oder Kleinstfirmen. Genau für diese Kunden ist dieses Projekt gedacht. Hobbylizenzen stehen zur freien Verfügung, und auch die Businesslizenzen sollen erschwinglich bleiben. Zudem wird der Sourcecode für die UI zur freien Verfügung auf GitHub stehen, was es anderen erlaubt, auf diesen Grundlagen aufzubauen. Da es allerdings nicht immer sinnvoll, geschweige denn zumutbar ist, immer eine Website aufzurufen, muss die App irgendwie „installierbar" werden. Dies wird mittels Electron ermöglicht, da die „Website" in diesem Fall mittels V8 in einer abgekapselten App angezeigt wird. Dies ermöglicht alle Techniken der Web-Welt, mit Hardwaretreibern zu integrieren.

== Methoden und Vorgehensweise
Im Projekt wird mit der agilen Entwicklungsmethode Scrum gearbeitet. Dieser Ansatz wurde gewählt, um möglichst schnell Feedback zum aktuellen Entwicklungsstand zu bekommen. und um auf Kundenwünsche dynamisch eingehen zu können. Darüber hinaus ermöglicht die Entwicklung mittels Scrum auch eine nahtlose Dokumentation mittels Tickets, da jeder Arbeitsschritt immer im Vorhinein als Ticket angelegt und dann erst von einem Entwickler bearbeitet wird.

=== Feststellen der Anforderungen
Im Vorhinein wurde eine Anforderungsanalyse erstellt, in der die Zielgruppe und somit auch spätere Anwender befragt wurden. Die Befragung beinhaltete eine Bestandsaufnahme der aktuell am Markt vorhandenen Lösungen und deren Vor- und Nachteile. Ebenfalls wurden Wünsche und Verbesserungsvorschläge der Zielgruppe festgehalten und dokumentiert, woraufhin eine Vision ausgearbeitet wurde. Mittels Wireframe-Diagramms und analogen Methoden der visuellen Prototypenentwicklung (Stift und Papier) wurde wieder unter Einbeziehung der späteren Anwender Ein Modell samt Userinterface festgelegt.

== Erwartete Auswirkungen und Nutzen
Da es sich bei diesem Prototyp um die Prototypenentwicklung für ein späteres Produkt handelt, wird ein besonderes Augenmerk auf die Abkapselung einzelner Komponenten gelegt, um es der späteren Entwicklung so leicht wie möglich zu machen, ein fertiges Hardware-Software-Produkt auf den Markt zu bringen. Somit dient das Resultat der Projektarbeit als Grundlage für eine folgende Entwicklung eines vollwertigen Produktes.

