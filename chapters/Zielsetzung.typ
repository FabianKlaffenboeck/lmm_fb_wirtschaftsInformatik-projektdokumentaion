= Zielsetzung

== Projektbeschreibung und -kontext
Beginne mit einer kurzen Einführung in das Projekt und den Kontext, in dem es durchgeführt wird.
Erkläre, warum das Projekt notwendig oder wichtig ist und welches Problem es löst oder welchen Bedarf es deckt.

== Ziel des Projekts
Formuliere das übergeordnete Ziel des Projekts. Was soll mit diesem Projekt erreicht werden?
Achte darauf, dass das Ziel konkret und messbar ist.

== Teilziele und konkrete Ergebnisse
Die Hauptziehle dieser Proketarbeit sind wie folgt:

=== Erwerbung von Node-Native Kenntnissen
Da moderne Web Systeme es erlauben mit vergleichweise wenig aufwand, einer optisch sehr anprechende UI/UX zu realieren,
wird dise in zukunft immer wichtiger.
Da moderen Web Technologie darauf basiert das das Inetrface in einer Abgekapselten Sandbox (der Sogenannten V8) agiert,
ist es von hausaus nicht vorgesehen auf wieferlegend Hardware zuzugreifen. Um dies allerding zu ermöglichen, muss mittels Node-Native 
die Brücke geschlossen werden.  
Node-Native erlauft es mittels der Sogenannten NAPI, C++ Code in die V8 einzubinden,
der dann wie jedes andere Node Modul in JavaSricpt ausgeführt werden kann.

=== Entwicklung mit React/Electron
Webentwicklung ist heutzutage nicht wer wegzudenken, und werlaubt eine denkbar einfache erstellung von Userinterfaces.
Da es allerding nicht immer sinnvoll, geschweige denn zumitbar ist immer eine Website aufzurufen,
muss die App irgendwie "Instalierbar" werden. Dies wird mittels Electron ermöglicht, da die "Website" in deisem fall mittels V8 in eienr abgekapselten App
angezeigt wird. Dies ermöglich alle Techniken der Web-welt, mit hardware treibern zu intigrieren. 

=== Prototyp für Vector canalyzer alternative
das Programme Canalyzer der Firma Vector ist aktuell neben INCA von ETAS das beliebstse tool um mit Canbus zu arbeiten. 
Allering verlang Vector sehr hohe lizenzgebüren mit unteren 4 stelligen bereich pro Lizent, 
und damit ist diese Tool Landschaft kaum zugänglich für Hobbyentwickler oder Kleinstfirmen. Genau für dise Kunden ist dises Projekt gedacht.
Hobby Lizenzen stehen zur Freien verfügung, und auch die Busines Lizenzen sollen erschwindlich bleiben.
Zudem wird der Sorcecode für die UI zur freien verfügung auf GitHub stehen, was es anderen erlaubt auf disen Grundlagen aufzubauen. 

== Methoden und Vorgehensweise
Im Projekt wird mit der Agilen Entwicklungsmethode Scrum gearbeited.
Dieser ansatz wurde gewählt, um möglichst schnell feedback zum aktuellen entwichlungstand zu bekommen,
und um auf Kundenwünsche dynamisch eingehen zu können. Darüber hinaus ermöglicht die Entwicklung mittels Scrum auch eine Natlose dokumentation mittels
Ticket, da jeder Arbeitschritt immer im vorhinein als Ticket angelegt, und dann erst vonn einem Entwickler bearbeited wird.

=== Feststellen der Anforderungen
Im vorhinen wurde eine Anforderungsanalyse erstellt, in der die Ziehlgruppe, und somit auch sätere Anwendere befragt wurden.
Die befragung beinhaltete eine bestandsaufnahme der aktuell am Markt vohandenen Lösungen, und deren Vor und Nachteile.
Ebenfals wurden Wüsche und verbessungsvorschäge der Ziehlgruppe Festgehalten und dokumentiert, woraufhin ein eine Vision ausgearbeited wurde.  
Mittels Wireframe Diagram und Analogen mehoden der Visuellen Prototypen Entwichlung (Stift und Papier), wurde wieder unter einbeziehung der Späteren Anwendere
Ein modell, samt Userinterface festgelegt.   

== Erwartete Auswirkungen und Nutzen
Da es sich bei deisem Prokelt um die Prototypen entwichlung für ein späteres Produkt handelt,
wird ein besonderes Augenmerk auf die sessons-learned gelegt, um es der Späteren Entwicklung so leicht wie möglich zu machen ein fertiges 
hardware-Software Produkt auf den Markt zu bringen. 
Somit dient das Resultat der Proketarbeit als Grundlage für eine Folgenede Entwichlung einses Vollwertigen Produktes.  
