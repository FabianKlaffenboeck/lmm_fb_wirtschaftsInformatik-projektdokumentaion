#import "../templates/acronyms.typ": *

= Einleitung

== Einleitung

In der heutigen vernetzten Welt spielen Kommunikationssysteme eine entscheidende Rolle in der Automatisierung, im Automotive und in industrial Anwendungen.
Eines der am häufigsten verwendeten Standards für die Kommunikation zwischen Steuergeräten in Fahrzeugen und anderen Geräten ist der #acr("CAN") Bus.
Seit der Erfindund von Bosch, ist der #acr("CAN") Bus vorallem im automotive bereich zu finden, wird aber auch vermehrt in andreren Industrie bereichen eingesetzt.
Darauf aufbauend gibt es, protokolle wie CAN XCP, CanOpen und viele mehr.

Das CAN-Bussystem ermöglicht die Interaktion mehrerer ECUs über ein gemeinsames Kommunikationsmedium. Diese Fähigkeit zum Datenaustausch ist für moderne Fahrzeuge von entscheidender Bedeutung, da sie zahlreiche elektronische Funktionen koordinieren, darunter Motorsteuerung, Bremsen, Fahrerassistenzsysteme und Infotainment. Die Integration dieser Systeme bringt jedoch auch Herausforderungen mit sich, insbesondere in Bezug auf Fehlerbehebung, Leistungsüberwachung und Datenanalyse. Hier kommt das CAN-Bus-Überwachungstool ins Spiel, das diese Herausforderungen bewältigen und die Effizienz und Zuverlässigkeit von CAN-Netzwerken verbessern soll.

== Hintergrund

Der Bedarf an Kostengünstigen CanBus Monitoring Tools ist in den letzten Jahren stark gestiegen. 

Der Bedarf an einem effektiven Überwachungstool wird durch die zunehmende Komplexität moderner Fahrzeuge und Systeme verstärkt. Während die Anzahl der ECUs in Fahrzeugen in den letzten zwei Jahrzehnten exponentiell gestiegen ist, hat auch die über den CAN-Bus übertragene Datenmenge erheblich zugenommen. Dadurch ist die Entwicklung leistungsstarker Analyse- und Diagnosetools erforderlich geworden, mit denen Entwickler und Ingenieure die Kommunikation zwischen ECUs überwachen, Probleme schnell identifizieren und beheben sowie die Systemleistung optimieren können.

Das im Rahmen dieses Projekts entwickelte CAN-Bus-Monitoring-Tool basiert auf bestehenden Lösungen wie dem Canalyser von Vector, der als Benchmark für Leistungsfähigkeit und Benutzerfreundlichkeit in der CAN-Diagnosetechnologie dient. Ziel dieses Projekts ist die Schaffung eines umfassenden Monitoring-Tools, das eine Vielzahl von Funktionen bietet, darunter Datenaufzeichnung, Protokollierung, Visualisierung und Analyse der CAN-Daten in Echtzeit. Damit können Benutzer den Status des Netzwerks überwachen, Fehlfunktionen erkennen und die Systemleistung optimieren.


// == Projektziele

// Die Hauptziele des Projekts sind wie folgt:

// #list(
//   [
//     Entwicklung eines benutzerfreundlichen Tools: Das Monitoring-Tool soll eine intuitive Benutzeroberfläche bieten, die es Ingenieuren und Technikern ermöglicht, CAN-Daten einfach zu erfassen und zu analysieren, ohne dass umfangreiche Schulungen erforderlich sind.
// ],[
//   Entwicklung eines benutzerfreundlichen Tools: Das Monitoring-Tool soll eine intuitive Benutzeroberfläche bieten, die es Ingenieuren und Technikern ermöglicht, CAN-Daten einfach zu erfassen und zu analysieren, ohne dass umfangreiche Schulungen erforderlich sind.
// ],[
//   Echtzeit-Überwachung und Analyse: Das Tool wird in der Lage sein, Daten in Echtzeit zu erfassen und zu analysieren, um sofortige Rückmeldungen zu den Netzwerkbedingungen und den Leistungsparametern der ECUs zu geben.
// ],[
//   Datenvisualisierung: Eine klare und informative Visualisierung der Daten ist entscheidend, um Trends und Anomalien leicht erkennen zu können. Das Tool wird verschiedene Visualisierungstechniken einsetzen, um die Informationen zugänglich und verständlich zu machen.
// ],[
//   Fehlerdiagnose und Protokollierung: Ein wesentliches Merkmal des Tools wird die Fähigkeit zur Fehlerdiagnose sein, die es Benutzern ermöglicht, Protokolle von CAN-Kommunikationsereignissen zu führen und Probleme effektiv zu identifizieren und zu beheben.
// ],[
//   Erweiterbarkeit und Flexibilität: Das Tool soll modular aufgebaut sein, um zukünftige Erweiterungen und Anpassungen an neue Technologien und Standards zu ermöglichen.
// ]
// )

== Technologischer Rahmen

Die Entwicklung des CAN Bus Monitoring Tools wird durch einen vorallem aus dem Web bereich bekannten und hoch modernen technologie stack unterstützt.
Im details ist die reden von React, da es top perfomant, und einfach in der Struktorirung ist.
Als Kompoenenten Library kommt ShadCn aufgrund seines modernen ausssehens und der verfügbarkeit des Source-Codes, was Anpassungen vereinfacht.
Abgerundet wird der Stack von Vite als build framework, und Electron als Laufzeit Umgebung.
Beide systeme sind vielseitig im einsatz und auf grund ihrer verbreitung top getested.
Da die bereits genannent Technilogien aus den Web bereich kommen, und diese nicht auf die Hardware Ebene zugreifen können,
musste noch eine Node-Native Erweiterung für die V8 Engine von Electron bereit gestellt werden. 
Diese Erweiteung greift über NAPI auf die V8 Engine zu, und ist in C++ geschreiben.
Die Tadsache dass das Prugin in C++ geschreiben ist, ermöglicht es seinerseits auf die,
von Kvaser bereit gestellte, API der CanBus zu USB wandler zuzugreigen. 

// == Methodik

// Die Methodik für die Entwicklung des Monitoring-Tools umfasst mehrere Phasen:

// #list(
//   [
//     Anforderungsanalyse: In dieser Phase werden die spezifischen Anforderungen an das Tool definiert. Dies beinhaltet die Identifizierung der Benutzerbedürfnisse, der gewünschten Funktionen und der technischen Rahmenbedingungen.
// ],[
//   Entwurf und Planung: Auf Basis der Anforderungsanalyse wird ein detaillierter Entwurf des Tools erstellt, der sowohl die Softwarearchitektur als auch die Benutzeroberfläche umfasst.
// ],[
//   Implementierung: In dieser Phase erfolgt die eigentliche Programmierung des Tools. Hierbei werden die verschiedenen Module entwickelt und integriert, einschließlich der Datenerfassungs- und Analysefunktionen.
// ],[
//   Testen und Validierung: Nach der Implementierung wird das Tool gründlich getestet, um sicherzustellen, dass alle Funktionen korrekt arbeiten und die Benutzerfreundlichkeit gegeben ist. Dies umfasst sowohl Unit-Tests als auch Integrationstests.
// ],[
//   Dokumentation: Eine umfassende Dokumentation wird erstellt, um die Benutzer bei der Nutzung des Tools zu unterstützen und zukünftige Entwickler bei der Wartung und Erweiterung des Systems zu informieren.
// ]
// )

// == Bedeutung des Projekts

// Das CAN Bus Monitoring Tool hat nicht nur einen hohen praktischen Nutzen für Ingenieure und Techniker, sondern trägt auch zur Weiterentwicklung von Diagnose- und Überwachungstechnologien in der Automobilindustrie und anderen Bereichen bei. Durch die Verbesserung der Effizienz und Zuverlässigkeit von CAN-Netzwerken werden nicht nur die Kosten gesenkt, sondern auch die Sicherheit und Leistungsfähigkeit moderner Fahrzeuge und Systeme erhöht. Die im Rahmen dieses Projekts entwickelten Technologien können auch auf andere Bereiche wie die industrielle Automatisierung, Robotik und das Internet der Dinge (IoT) angewendet werden.

// == Ausblick

// Abschließend lässt sich sagen, dass das CAN Bus Monitoring Tool einen wichtigen Schritt in Richtung einer besseren Überwachung und Analyse von CAN-Netzwerken darstellt. Mit der ständigen Weiterentwicklung von Technologien und der zunehmenden Komplexität von Fahrzeugen und Systemen ist die Nachfrage nach leistungsfähigen Monitoring- und Diagnosetools höher denn je. Dieses Projekt wird nicht nur die bestehenden Herausforderungen adressieren, sondern auch den Weg für zukünftige Innovationen in der Kommunikations- und Datentechnologie ebnen.

// In den folgenden Kapiteln dieses Berichts werden die spezifischen Details der Implementierung, die Testergebnisse und die endgültigen Evaluierungen des Tools dargelegt, um einen umfassenden Überblick über die Entwicklung und den Betrieb des CAN Bus Monitoring Tools zu geben.


// #lorem(2000)