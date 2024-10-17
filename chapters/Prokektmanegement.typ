#import "@preview/pintorita:0.1.2"
#import "@preview/acrostiche:0.3.3": *

= Prokektmanegement
#lorem(100)

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
    [Hauptaufgaben (Projektphasen): #list([TODO])], [],
    [ProjektauftraggeberIn: #list([FKLab])], [ProjektleiterIn: #list([Fabian Klaffenböck])],
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
++ App nach Brandguids von FKLab designen
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
#show table.cell.where(x: 0): strong
#show table.cell.where(y: 0): strong

#table(
  columns: (0.05fr,1fr),
  inset: 10pt,
  table.header([], [Arbeitspaket Spezifikation]),
  table.cell(
    rowspan: 4,
    align: horizon,
    rotate(-90deg, reflow: true)[
      *PSP-Code, AP-Bezeichnung*
    ],
  ),
  [*AP-Inhalt* (Was soll getan werden?): #list([test],[test],[test],[test],[test])],
  [*AP-Nicht*-Inhalte (Was soll nicht getan werden?): #list([test],[test],[test],[test],[test])],
  [*AP-Ergebnisse* (Was liegt nach Beendigung des Arbeitspaketes vor?): #list([test],[test],[test],[test],[test])],
  [*AP-Leistungsfortschrittsmessung* (Wie wird der Fortschritt gemessen?): #list([test],[test],[test],[test],[test])],
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
    [2],[Implement Shadcn],[],[],[],
    [3],[Dynamic-grid ist verfügbar],[],[],[],
    [4],[Node-native Lib für Kvaser],[],[],[],
    [5],[Einlesen erster Can Nachrichten],[],[],[],
    [6],[TODO],[],[],[],
    ),
)

#pagebreak()
== Projektkostenplan
#figure(
  table(
    columns: (0.5fr, 1fr, 0.75fr, 0.75fr, 0.75fr, 0.75fr),
    inset: 10pt,
    align: left,
    table.header([PSP-Code, AP-Bezeichnung], [Kostenart], [Plankosten], [Adaptierte Plankosten per ...], [Istkosten], [Kostenabweichung]),
    table.cell(
      rowspan: 5,
      align: horizon,
      rotate(-90deg, reflow: true)[],
    ),
    [#list([Personal])],[],[],[],[],
    [#list([Material])],[],[],[],[],
    [#list([Fremdleistungen])],[],[],[],[],
    [#list([Sonstige])],[],[],[],[],
    [Gesamt],[],[],[],[],
    ),
)
