#import "@preview/pintorita:0.1.2"
#import "@preview/acrostiche:0.3.3": *

= Prokektmanegement
  Um bei desiem Projekt am zahn der zeit zu belieben, wird die weit verbreite und moderne Projekt management methode Scrum gesetzt. Es wurde ien Entwichlungszeitraum von je 3 Wochen fixirt, wobei bei Problemen der Therminfinung mit Stakeholdern teils auch auch einen 4 Wöchugen Zyklus ausgewichen wurde. #linebreak()
  Bei der umsetztung von Scrum wurde sich aufgrund des sehr kleinen Entwicklerteams nur auf Planing und Review beschränkt. #linebreak()

== Scrum Events

=== Planing
Zweck: #linebreak()
In diesem Event wird definirt was in dem Jeweiligen sprinte erreicht werden soll, dazu werden so genannte Tickets Erstellt, welches dann dem jeweiligen Entwichler zugewieden werden kann. #linebreak()
Teilnehmer: #linebreak() 
Damit deises Meeting Produktiv abgehalten werden kann sollten allen voran sämtliche Entwichler und POs anwesend sein. 
#linebreak()
Key Activities:
#list(
  [
    Definieren des Sprint Goal: Der Product Owner schlägt vor, wie das Produkt im Laufe des Sprints an Wert gewinnen könnte. Das Team arbeitet zusammen, um ein Sprint Goal zu definieren, das diesen Wert den Stakeholdern kommuniziert.
  ],
  [
    Auswählen von Product Backlog Items: Die Entwickler wählen Elemente aus dem Product Backlog aus, die in den Sprint aufgenommen werden sollen. Diese Auswahl basiert auf der bisherigen Leistung, der Kapazität und der Definition von Done
  ],
  [
    Planen der Arbeit: Die Entwickler planen, wie sie die ausgewählten Product Backlog-Elemente in Wertzuwächse umwandeln, indem sie sie in kleinere Aufgaben zerlegen1
  ]
)

=== Review
  Zweck: #linebreak()
  In deisem Meeting wird zusammen mit allen steakholdern der akteulle Entwicklungschrit begutachted, und Feedback eingeholt. Zudem wird der Produkt Backlog angepasst, bassierend auf dem Egebnis dieses Meetings. Um dies zu erreichen, stellen die Entwichler den aktuelle stand vor.
  Teilnehmer: #linebreak() 
  Anwesend sein sollte das gesammte Scrum team, und alle key Stakeholder inkusive des POs.

#pagebreak()

== Projektauftrag

=== Projektstartereignis

#figure(
  table(
    columns: (1fr, 1fr),
    inset: 10pt,
    align: left,
    [Projektstartereignis: #list([Abklärung der Funtionne mit Ziehlgruppe])], [Projektstarttermin: #list([16.10.2024])],
    [Inhaltliches Projektendereignis: #list([Testveröffentlichung auf GitHub])], [Projektendtermine: #list([25.01.2025])],
    [Projektziele: #list([Erstellung einer CAN-monitoring Anwendung])], [Nicht-Projektziele: #list([Test], [Bewerbung], [Design])],
    [Hauptaufgaben (Projektphasen): #list([Werden mittels Scrum im laufe der Entwichlung bestimmt.])], [],
    [ProjektauftraggeberIn: #list([eWolveLabs])], [ProjektleiterIn: #list([Fabian Klaffenböck])],
    [Projektteam: #list([Fabian Klaffenböck])], []
    ),
)

#pagebreak()
== Projektzieleplan
#figure(
  table(
    columns: (1fr, 1fr),
    inset: 10pt,
    align: left,
      [*Zielart*], [*Projektziele*],
      [Hauptziele:], [#list([TODO])],
      [Zusatzziele:], [#list([TODO])],
      [Nicht-Ziele:], [#list([Wartung des Tools], [Dauerhafte download bereitstellung], [Implementierung neuer Funktionen])],
    ),
)


#pagebreak()
== Projektstrukturplan
#show raw.where(lang: "pintora"): it => pintorita.render(it.text)

```pintora
mindmap
@param layoutDirection TB
+ Apollolink
++ Hardware Interface
++ UI/UX Design
++ Branding
++ Deployment
```

```pintora
mindmap
@param layoutDirection TB
+ Hardware Interface
++ Node Lib für allgemeine interfaces
++ Node-Native Library für Kvaser Interface
```

```pintora
mindmap
@param layoutDirection TB
+ UI/UX Design
++ Vorlage in Penpot bauen
++ Usability Reports erstelln
```

```pintora
mindmap
@param layoutDirection TB
+ Branding
++ App nach Brandguids von eWolveLabs designen
```

```pintora
mindmap
@param layoutDirection TB
+ Deployment
++ CI/CD Für Node Module
++ CI/CD Für Electron
++ Linter Tests
```

#pagebreak()

== Arbeitspaket-Spezifikation

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 3,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([Basich layout erstellen])],
  [*AP-Nicht-Inhalte* (Was soll nicht getan werden?):
    #list([Tieflegende funtionen implementieren])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([Ein grundlegendes user interface ist erkennbar])]
)

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 3,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([Plots solle in Dashboard verfügbar sein])],
  [*AP-Nicht-Inhalte* (Was soll nicht getan werden?):
    #list([test mittels Can schnitstelle -> Nur mock])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([Mockdaten werden ansehbar])]
)

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 3,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([daten einträge sollen löschbar sein])],
  [*AP-Nicht-Inhalte* (Was soll nicht getan werden?):
    #list([Disableing wen Can verwendet wird])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([Die user-experidende wird verbessert, da daten gelöscht werden können die ihrtümlich erstellt wurden.])]
)

#pagebreak()

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 3,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([DBC Parser einbinden])],
  [*AP-Nicht-Inhalte* (Was soll nicht getan werden?):
    #list([Enbindung und Visualisirung einer DBC datei ind das gesammt System])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([DBC Dateien können hochgeldaen werden, und sind übersichtlich zu werwalten, im hintergrund werden JS modelle erstellt, die im Code verwendet werden können.])]
)

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 3,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([Erstellen neuer Cards soll im Lineken menü möglich sein.])],
  [*AP-Nicht-Inhalte* (Was soll nicht getan werden?):
    #list([Enable und Diasble bassirend auf bus Status])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([Neue Karten sollen bequem erstellt werden können.])]
)

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 2,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([Settings seite erstellen])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([alle einstellungen sollen übersichtlich verwaltbar sein.])]
)

#pagebreak()

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 3,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([hinzufügen von Shadcn/ui])],
  [*AP-Nicht-Inhalte* (Was soll nicht getan werden?):
    #list([Einbindung in die UI])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([Shadcn soll zur entwichklung zur verfügung stehen.])]
)

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.cell(
    rowspan: 3,
    align: horizon,
    rotate(-90deg, reflow: true)[*PSP-Code, AP-Bezeichnung*]),
  [*AP-Inhalt* (Was soll getan werden?):
    #list([erstellung einer CICD pipeline])],
  [*AP-Nicht-Inhalte* (Was soll nicht getan werden?):
    #list([aufsetzten von server Infrastruktur])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?):
    #list([nach jedem Commit soll der Linter und Tests ausgeführt werden.])]
)

#pagebreak()
== Projektmeilensteinplan
#figure(
  table(
    columns: (0.25fr, 1fr, 0.65fr, 0.60fr, 0.55fr),
    inset: 10pt,
    align: left,
    table.header([PSP-Code], [Meilenstein], [Basis-termine], [Aktuelle Plantermine], [Ist Termine]),
    [1],[Setup von Electron/Vite],[13.10.2024],[],[13.10.2024],
    [2],[Implement ShadCn],[13.10.2024],[],[13.10.2024],
    [3],[Dynamic-grid ist verfügbar],[14.10.2024],[],[13.10.2024],
    [4],[Node-native Lib für Kvaser],[16.11.2024],[],[16.11.2024],
    [5],[Einlesen erster Can Nachrichten],[16.11.2024],[],[16.11.2024],
    [6],[Settins Page fertigstellung],[23.11.2024],[],[24.11.2024],
    [7],[DBC parsing],[29.11.2024],[],[30.11.2024],
    [8],[Darstellung mittels Grid],[30.11.2024],[],[30.11.2024],
    ),
)

// #pagebreak()
// == Projektkostenplan
// #figure(
//   table(
//     columns: (0.5fr, 1fr, 0.75fr, 0.75fr, 0.75fr, 0.75fr),
//     inset: 10pt,
//     align: left,
//     table.header([PSP-Code, AP-Bezeichnung], [Kostenart], [Plankosten], [Adaptierte Plankosten per ...], [Istkosten], [Kostenabweichung]),
//     table.cell(
//       rowspan: 5,
//       align: horizon,
//       rotate(-90deg, reflow: true)[],
//     ),
//     [#list([Personal])],[],[],[],[],
//     [#list([Material])],[],[],[],[],
//     [#list([Fremdleistungen])],[],[],[],[],
//     [#list([Sonstige])],[],[],[],[],
//     [Gesamt],[],[],[],[],
//     ),
// )