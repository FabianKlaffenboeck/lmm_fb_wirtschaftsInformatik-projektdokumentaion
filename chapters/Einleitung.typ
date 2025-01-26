#import "../templates/acronyms.typ": *

= Einleitung

== Einleitung

In der heutigen vernetzten Welt spielen Kommunikationssysteme eine entscheidende Rolle in der Automatisierung, im Automotive und in industrial Anwendungen.
Eines der am häufigsten verwendeten Standards für die Kommunikation zwischen Steuergeräten in Fahrzeugen und anderen Geräten ist der #acr("CAN")-Bus.
Seit der Erfindung von Bosch, ist der #acr("CAN")-Bus vorallem im automotive Bereich zu finden, wird aber auch vermehrt in andrehen Industrie bereichen eingesetzt.
Darauf aufbauend gibt es, Protokolle wie #acr("CAN") XCP, #acr("CAN")-Open und viele mehr.

Das #acr("CAN")-Bussystem ermöglicht die Interaktion mehrerer ECUs über ein gemeinsames Kommunikationsmedium. Diese Fähigkeit zum Datenaustausch ist für moderne Fahrzeuge von entscheidender Bedeutung, da sie zahlreiche elektronische Funktionen koordinieren, darunter Motorsteuerung, Bremsen, Fahrerassistenzsysteme und Infotainment. Die Integration dieser Systeme bringt jedoch auch Herausforderungen mit sich, insbesondere in Bezug auf Fehlerbehebung, Leistungsüberwachung und Datenanalyse. Hier kommt das CAN-Bus-Überwachungstool ins Spiel, das diese Herausforderungen bewältigen und die Effizienz und Zuverlässigkeit von CAN-Netzwerken verbessern soll.

#pagebreak()
== Hintergrund

Der Bedarf an Kostengünstigen #acr("CAN")-Bus Monitoring Tools ist in den letzten Jahren stark gestiegen.

Der Bedarf an einem effektiven Überwachungstool wird durch die zunehmende Komplexität moderner Fahrzeuge und Systeme verstärkt. Während die Anzahl der ECUs in Fahrzeugen in den letzten zwei Jahrzehnten exponentiell gestiegen ist, hat auch die über den #acr("CAN")-Bus übertragene Datenmenge erheblich zugenommen. Dadurch ist die Entwicklung leistungsstarker Analyse- und Diagnosetools erforderlich geworden, mit denen Entwickler und Ingenieure die Kommunikation zwischen ECUs überwachen, Probleme schnell identifizieren und beheben sowie die Systemleistung optimieren können.

Das im Rahmen dieses Projekts entwickelte #acr("CAN")-Bus-Monitoring-Tool basiert auf bestehenden Lösungen wie dem Canalyser von Vector, der als Benchmark für Leistungsfähigkeit und Benutzerfreundlichkeit in der CAN-Diagnosetechnologie dient. Ziel dieses Projekts ist die Schaffung eines umfassenden Monitoring-Tools, das eine Vielzahl von Funktionen bietet, darunter Datenaufzeichnung, Protokollierung, Visualisierung und Analyse der CAN-Daten in Echtzeit. Damit können Benutzer den Status des Netzwerks überwachen, Fehlfunktionen erkennen und die Systemleistung optimieren.

#pagebreak()
== Projektziele

Die Hauptziele des Projekts sind wie folgt:

#list(
  [
    Entwicklung eines benutzerfreundlichen Tools: Das Monitoring-Tool soll eine intuitive Benutzeroberfläche bieten, die es Technikern einfach
    ermöglicht, #acr("CAN") Daten zu erfassen und zu analysieren, ohne vorher eine Langwierige und Kostenintensive Schulungen durchlaufen zu haben.
  ],
  [
    Echtzeit-Überwachung und Analyse: Das Tool muss in der Lage sein einen #acr("CAN")-Bus über 10 Minuten aufzuzeichnen und Grafisch darzustellen.
  ],
  [
    Datenvisualisierung: Die empfangenen Frames müssen Grafisch ansprechend Dargestellt werden, und es muss übersichtlich sein welche Daten wo genau angezeigt werden.
  ],
  [
    #acr("CAN")-Bus Architektur: Es muss möglich sein den Bus in logische Einheiten (Channels und Nodes) zu unterteilen, und mit Hilfe einer so genannten #acr("DBC") Datei aufzuschlüsseln.
  ],
  [
    Erweiterbarkeit und Flexibilität: Das Tool soll modular aufgebaut sein, um zukünftige Erweiterungen und Anpassungen an neue Technologien und Standards zu ermöglichen.
  ],
)

== Technologischer Rahmen

Die Entwicklung des #acr("CAN")-Bus Monitoring Tools wird durch einen, Vorallem aus dem Web bereich bekannten und hoch modernen Technologie stack unterstützt.
Im details ist die reden von React, da es top Performanz, und einfach in der Strukturierung ist.
Als Komponenten #acr("LIB") kommt ShadCn aufgrund seines modernen Aussehens und der Verfügbarkeit des Source-Codes, was Anpassungen vereinfacht.
Abgerundet wird der Stack von Vite als build framework, und Electron als Laufzeit Umgebung.
Beide Systeme sind vielseitig im einsatz und aufgrund ihrer Verbreitung top getestet.
Da die genannten Technologien aus den Web-bereich kommen, und diese nicht auf die Hardware Ebene zugreifen können,
musste noch eine Node-Native Erweiterung für die V8 Engine von Electron bereit gestellt werden.
Diese Erweiterung greift über NAPI auf die V8 Engine zu, und ist in C++ geschrieben.
Die Tatsache dass das Plugin in C++ geschrieben ist, ermöglicht es seinerseits auf die,
von Kvaser bereit gestellte, #acr("API") der #acr("CAN")-Bus zu USB-Wandler zuzugreifen.

== Methodik

Die Methodik für die Entwicklung des Monitoring-Tools umfasst mehrere Phasen:

#list(
  [
    Anforderungsanalyse: In dieser Phase werden die spezifischen Anforderungen an das Tool definiert. Dies beinhaltet die Identifizierung der Benutzerbedürfnisse, der gewünschten Funktionen und der technischen Rahmenbedingungen.
  ],
  [
    Entwurf und Planung: Auf Basis der Anforderungsanalyse wird ein detaillierter Entwurf des Tools erstellt, der sowohl die Softwarearchitektur als auch die Benutzeroberfläche umfasst.
  ],
  [
    Implementierung: In dieser Phase erfolgt die eigentliche Programmierung des Tools. Hierbei werden die verschiedenen Module entwickelt und integriert, einschließlich der Datenerfassungs- und Analysefunktionen.
  ],
  [
    Testen und Validierung: Nach der Implementierung wird das Tool gründlich getestet, um sicherzustellen, dass alle Funktionen korrekt arbeiten und die Benutzerfreundlichkeit gegeben ist.
  ],
  [
    Dokumentation: Eine umfassende Dokumentation wird erstellt, um die Benutzer bei der Nutzung des Tools zu unterstützen und zukünftige Entwickler bei der Wartung und Erweiterung des Systems zu informieren.
  ],
)
