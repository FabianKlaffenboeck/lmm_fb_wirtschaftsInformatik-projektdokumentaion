#import "../templates/acronyms.typ": acr

= Anlass und Problemhintergrund

Dieses Projekt wurde ins Leben gerufen, um den wachsenden und sich ständig verändernden Anforderungen an moderne Werkzeuge zur Auswertung von #acr("CAN")-Bus-Systemen gerecht zu werden. Moderne Can-Bus Architekturen die vor allem im Automotive Bereich, aber auch in anderen Branchen wie Großmaschinenbau, Fertigungstechnik und Medizintechnik zum Einsatz kommen, sind essenziell für eiene Vernetzte Architektur, aller Steuergeräte und Sensoren. Die Analyse und die Visualisierung dieser Systeme erfordert spezialisierte Tools, die nicht nur technisch leistungsfähig, sondern auch benutzerfreundlich sein sollen.
#linebreak()
Die aktuellen Lösungen auf dem Markt haben sich zwar über viele Jahre hinweg bewährt, doch basieren sie teils auf einem alten System Kern, der die Portierung auf Moderne Betriebssysteme erschwert. Viele dieser Tools wurden über Jahre erweitert, was zu schwerfälligen und teils kompliziert User Interfaces führte. In diesem Projekt wurde daher bewusst jede Komponente bis in kleinste Details überdacht und neu entwickelt. Es wurde gezielt auf modernste Technologien aus dem Webbereich gesetzt, um eine übersichtliche und eine benutzerfreundliche Lösung zu schaffen.
#linebreak()
Durch den Einsatz er neuesten Technologien konnten die Entwicklungszeit und der Ressourcenaufwand erheblich reduziert werden. Gleichzeitig wurde sichergestellt, dass die Software neusten Entwicklungsmethoden wie TDD erfüllt. Ein modularer Aufbau und die Einhaltung von best-practices der Softwareentwicklung ermöglichen nicht nur eine hohe Stabilität, sondern auch eine einfaches Reagieren auf sich ändernde Anforderungen.
#linebreak()
Ein besonderer Schwerpunk lag auf dem Design des User-interfaces. Das gerammte #acr("UI")/#acr("UX") basiert auf modernen Webstandards, die eine Plattformunabhängigkeit gewährleisten. Dies macht es möglich, eine ansprechende und leicht verständliche Benutzeroberfläche zu gestalten. Obwohl die Anforderungen der Software technisch komplex sind, erinnert die Bedienung an Standard Apps, wie sie jeder von Smartphones oder Tablets kennt. Diese einfache erleichtert es Technikern, die sich erstmals mit der Materie befassen, schnell produktiv zu Arbeiten.
#linebreak()
Ein weiterer Vorteil dieses Ansatzes liegt in der Schulung neuer Mitarbeiter. Durch die intuitive Benutzerführung können auch neue Techniker schnell die Funktionsweise der Software verstehen. Dies reduziert nicht nur die Einarbeitungszeit erheblich, sondern senkt auch die Kosten für Schulungen und Fortbildungen. Gleichzeitig wird die Produktivität neuer Kollegen schneller gesteigert, was insbesondere für Unternehmen ein großer Vorteil ist.
#linebreak()
Ein zusätzlicher Kostenvorteil entsteht durch das Lizenzmodell der Software. Im Gegensatz zu vielen etablierten Anbietern, die auf teure Lizenz- und Wartungsverträge setzen, verfolgt dieses Projekt einen wesentlich zugänglicheren Ansatz. Professionelle Softwarelösungen sind häufig mit hohen Lizenzkosten verbunden, die durch komplexe Serviceverträge ergänzt werden. Ohne diese Wartungsverträge ist ein Zugriff auf Software-Updates oft nicht möglich. Dies mag für große Unternehmen mit entsprechenden Budgets und Anforderungen geeignet sein, ist jedoch für kleinere Unternehmen, Start-ups und den Hobbybereich unattraktiv oder schlicht unerschwinglich.
#linebreak()
ApolloLink hingegen setzt bewusst auf ein anderes Modell. Die Grundfunktionen der Software sollen als OpenSource Lösung bereitgestellt werden, um auch Hobbyentwicklern und kleineren Unternehmen Zugang zu ermöglichen. Dies fördert nicht nur die Verbreitung der Software, sondern ermöglicht auch eine breitere Community, die zur Weiterentwicklung beitragen kann. Für ambitionierte Nutzer wird die Möglichkeit geboten, eine Beta-tester Lizenz zu erwerben. Dadurch können potenzielle Fehler oder Schwächen, die erst im realen Einsatz sichtbar werden, direkt behoben werden ohne den langwierigen Umweg über klassische Support-strukturen.

== Aktuelle Marktlage

Der Markt für #acr("CAN")-Bus Tools wird derzeit von wenigen großen Anbietern dominiert. Diese Hersteller bieten umfassende Softwarelösungen an, die jedoch in der Regel an spezifische Hardware gebunden sind. Die Analyse-Software muss häufig in Kombination mit teuren Can Interfaces erworben werden, was die Einstiegskosten erheblich erhöht. Darüber hinaus setzen viele Anbieter auf ein Lizenzmodell, das auf jährliche Wartungsverträge angewiesen ist. Ohne diese Verträge bleibt die Software meist statisch und erhält keine Updates, was langfristig zu einem erheblichen Wettbewerbsnachteil führen kann.
#linebreak()
Für große Unternehmen und Konzerne ist dieses Modell durchaus attraktiv, da es viele Probleme, die im laufenden Betrieb auftreten können, auf den Hersteller auslagert. Die internen Ressourcen der Firmen bleiben dadurch geschont, und die Wartung der Software ist in festen Servicevereinbarungen geregelt. Für kleinere Unternehmen, Start-ups oder den Hobbybereich ist dieses Modell jedoch weniger geeignet. Die hohen Kosten für Lizenzen und Wartung machen den Einsatz solcher Tools oft unerschwinglich, weshalb viele Nutzer auf kostenlose oder kostengünstige Alternativen zurückgreifen müssen, die jedoch häufig nicht den Anforderungen entsprechen.
#linebreak()
ApolloLink adressiert genau diese Schwächen des aktuellen Marktes. Durch die niedrigen Einstiegshürden sowohl finanziell als auch technisch bietet es insbesondere Hobbyentwicklern und kleinen Unternehmen eine echte Alternative zu den etablierten Lösungen. Diese Zielgruppen können von der modernen und benutzerfreundlichen Software profitieren, ohne sich durch teure Wartungsverträge oder Hardwarebeschränkungen einschränken zu lassen.
#linebreak()
Durch die breite Verfügbarkeit und die zugängliche Gestaltung wird ApolloLink zunächst im Privatsektor Verbreitung finden. Dies ermöglicht es, eine große Nutzerbasis aufzubauen, die durch Mundpropaganda und positive Erfahrungen zur Verbreitung der Software beiträgt. Langfristig ist auch ein Einstieg in den Enterprise-Bereich denkbar, da ApolloLink durch seine zahlreichen Vorteile insbesondere Kosteneffizienz, Benutzerfreundlichkeit und Modularität auch für größere Unternehmen attraktiv sein kann.
#linebreak()
Insgesamt bietet ApolloLink die Chance, die Landschaft der #acr("CAN")-Bus-Analyse-Tools nachhaltig zu verändern und eine Brücke zwischen den Bedürfnissen von Hobbyentwicklern, Start-ups und großen Unternehmen zu schlagen.

#pagebreak()

== Forschung und bestehende Lösungen

Wen man sich die, wie oben beschriebene, Marktlage noch einmal genauer ansieht, stellt man zunehmend fest, dass es nur eine kleine Hand voll großer Unternehmen weltweit gibt, die sich zu einer Monopolmacht herauskristalieriert haben. Dies erlaubt Ihnen, diese Marktlage auszunützen, beziehungsweise sich auf ihren Position auszuruhen. Daher gibt es bis heute eigentlich keine große Konkurrenz, worunter alle aktuell leiden. 
#linebreak()
Daher ist die Forschungsfrage, ob es möglichn ist, ein solch komplexes Tool mit top modernen Technologien aus den Web-Bereich zuzusetzen auch für andere Unternehmen von Interesse, da es möglich gemacht werden würde, auf andere Entwicklungs-Ressourcen zurückgreifen, da man nicht auf einen veralteten Tech-Stack angewiesen ist.

== Lernziel und persönliche Entwicklung

Da dies das erste Projekt darstellt, welches ich mit diesem speziellen Tech-Stack realisiere, erhoffe ich mir durch dieses Projekt vor allem einige wichtige Lessons learned. Was für mich von besonderer Bedeutung ist, ist die Einbettung einer C++-Codebase mittels Nodenative in eine Electron-React-Anwendung. Dies ist besonders interessant, da sich dadurch unzählige Verwendungszwecke und die damit verbundenen Projektmöglichkeiten eröffnen.
#linebreak()
Außerdem ist es sehr spannend, ein Gefühl für die Technologie und deren Vor- und Nachteile zu bekommen. Auch gewinnt die intensive Auseinandersetzung mit dem Electron-Framework zunehmend mehr an Wichtigkeit, da alle Zeichen zurzeit darauf stehen, neue Apps ausschließlich auf Webbasis zu entwickeln, um Netzwerkressourcen besser zum Einsatz zu bringen.

== Langfristige Ziele

Durch dieses Projekt wird eine langfristige Verbesserung in der Open-Source-Community angestrebt, insbesondere in Bezug auf die Nutzung des #acr("CAN")-Bus in Hobbyprojekten. Die Open-Source-Version bleibt dauerhaft auf GitHub verfügbar, was eine breite Nutzung und den Austausch innerhalb der Community fördert. Langfristig soll dies auch das Interesse von Unternehmen wecken. #linebreak()
Für Business-Kunden sind spezielle Funktionspakete vorgesehen, die eine einfache Anpassung an die individuellen Bedürfnisse der Endnutzer ermöglichen. Diese Erweiterungen bieten zusätzliche Funktionen und Support-Optionen, die besonders für professionelle Anwendungen interessant sind. #linebreak()
Die einfache Anschaffung und die niedrigen Einstiegshürden fördern die Akzeptanz sowohl bei Hobbyisten als auch bei Unternehmen. So wird das Produkt zunehmend in verschiedenen Branchen verbreitet und findet langfristig auch kommerzielle Anwendung.
