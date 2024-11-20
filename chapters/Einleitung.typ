#import "../templates/acronyms.typ": *

= Einleitung

== Einleitung

In der heutigen vernetzten Welt spielen Kommunikationssysteme eine entscheidende Rolle in der Automatisierung, im Automotive und in industrial Anwendungen.
Eines der am häufigsten verwendeten Standards für die Kommunikation zwischen Steuergeräten in Fahrzeugen und anderen Geräten ist der CAN Bus.
Seit der Erfindund von Bosch, ist der CAN Bus vorallem im automotive bereich zu finden, wird aber auch vermehrt in andreren Industrie bereichen eingesetzt.
Darauf aufbauend gibt es, protokolle wie CAN XCP, CanOpen und viele mehr.

Das CAN-Bussystem ermöglicht die Interaktion mehrerer ECUs über ein gemeinsames Kommunikationsmedium. Diese Fähigkeit zum Datenaustausch ist für moderne Fahrzeuge von entscheidender Bedeutung, da sie zahlreiche elektronische Funktionen koordinieren, darunter Motorsteuerung, Bremsen, Fahrerassistenzsysteme und Infotainment. Die Integration dieser Systeme bringt jedoch auch Herausforderungen mit sich, insbesondere in Bezug auf Fehlerbehebung, Leistungsüberwachung und Datenanalyse. Hier kommt das CAN-Bus-Überwachungstool ins Spiel, das diese Herausforderungen bewältigen und die Effizienz und Zuverlässigkeit von CAN-Netzwerken verbessern soll.

== Hintergrund

Der Bedarf an Kostengünstigen CanBus Monitoring Tools ist in den letzten Jahren stark gestiegen. 

Der Bedarf an einem effektiven Überwachungstool wird durch die zunehmende Komplexität moderner Fahrzeuge und Systeme verstärkt. Während die Anzahl der ECUs in Fahrzeugen in den letzten zwei Jahrzehnten exponentiell gestiegen ist, hat auch die über den CAN-Bus übertragene Datenmenge erheblich zugenommen. Dadurch ist die Entwicklung leistungsstarker Analyse- und Diagnosetools erforderlich geworden, mit denen Entwickler und Ingenieure die Kommunikation zwischen ECUs überwachen, Probleme schnell identifizieren und beheben sowie die Systemleistung optimieren können.

Das im Rahmen dieses Projekts entwickelte CAN-Bus-Monitoring-Tool basiert auf bestehenden Lösungen wie dem Canalyser von Vector, der als Benchmark für Leistungsfähigkeit und Benutzerfreundlichkeit in der CAN-Diagnosetechnologie dient. Ziel dieses Projekts ist die Schaffung eines umfassenden Monitoring-Tools, das eine Vielzahl von Funktionen bietet, darunter Datenaufzeichnung, Protokollierung, Visualisierung und Analyse der CAN-Daten in Echtzeit. Damit können Benutzer den Status des Netzwerks überwachen, Fehlfunktionen erkennen und die Systemleistung optimieren.


== Projektziele

Die Hauptziele des Projekts sind wie folgt:

#list(
[
  Entwicklung eines benutzerfreundlichen Tools: Das Monitoring-Tool soll eine intuitive Benutzeroberfläche bieten, die es Technikern einfach
  ermöglicht, CAN Daten zu erfassen und zu analysieren, ohne vorher eine Langwireige und Kostenintensive Schlulung durchlaufen zu haben.
],[
  Echtzeit-Überwachung und Analyse: Das Tool muss in der der lage sein einen CanBus über 10 Minuten auzuzeichnen und Grafsich darzustellen.  
],[
  Datenvisualisierung: Die empfangenenn Frames müssen Grafisch ansprechend Dargestellt werden, und es muss übersichlich sein welche Daten wo genau angezeift werden.
],[
  CanBus Architektur: Es muss möglich sein den Bus in logiche Einheiten (Channels und Nodes) zu unterteilen, und mit hilfe einer so genannten DBC Datei aufzuschlüssenln.
],[
  Erweiterbarkeit und Flexibilität: Das Tool soll modular aufgebaut sein, um zukünftige Erweiterungen und Anpassungen an neue Technologien und Standards zu ermöglichen.
])

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

== Methodik

Die Methodik für die Entwicklung des Monitoring-Tools umfasst mehrere Phasen:

#list(
[
  Anforderungsanalyse: In dieser Phase werden die spezifischen Anforderungen an das Tool definiert. Dies beinhaltet die Identifizierung der Benutzerbedürfnisse, dergewünschten Funktionen und der technischen Rahmenbedingungen.
],[
  Entwurf und Planung: Auf Basis der Anforderungsanalyse wird ein detaillierter Entwurf des Tools erstellt, der sowohl die Softwarearchitektur als auch die Benutzeroberfläche umfasst.
],[
  Implementierung: In dieser Phase erfolgt die eigentliche Programmierung des Tools. Hierbei werden die verschiedenen Module entwickelt und integriert, einschließlich der Datenerfassungs- und Analysefunktionen.
],[
  Testen und Validierung: Nach der Implementierung wird das Tool gründlich getestet, um sicherzustellen, dass alle Funktionen korrekt arbeiten und die Benutzerfreundlichkeit gegeben ist.
],[
  Dokumentation: Eine umfassende Dokumentation wird erstellt, um die Benutzer bei der Nutzung des Tools zu unterstützen und zukünftige Entwickler bei der Wartung und Erweiterung des Systems zu informieren.
]
)