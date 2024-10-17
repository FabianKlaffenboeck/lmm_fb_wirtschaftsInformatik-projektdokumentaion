#import "@preview/pintorita:0.1.2"

= Prokektmanegement
#lorem(100)

== Projektauftrag
#figure(
  table(
    columns: (1fr, 1fr),
    inset: 10pt,
    align: left,
    [Projektstartereignis: #list([test],[test])], [Projektstarttermin:],
    [Inhaltliches Projektendereignis:], [Projektendtermine],
    [Projektziele:], [Nicht-Projektziele:],
    [Hauptaufgaben (Projektphasen):], [],
    [ProjektauftraggeberIn:], [ProjektleiterIn:],
    [Projektteam:], []
    ),
)

== Projektzieleplan
#figure(
  table(
    columns: (1fr, 1fr, 1fr),
    inset: 10pt,
    align: left,
    [*Zielart*], [*Projektziele*], [*Adaptierte Projektziele per ...*],
    [Ziele: #list([Hauptziele],[Zusatzziele])], [], [],
    [Nicht-Ziele:], [], []
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
    columns: (0.5fr, 1fr, 0.75fr, 0.75fr, 0.75fr),
    inset: 10pt,
    align: left,
    table.header([PSP-Code], [Meilenstein], [Basis-termine], [Aktuelle Plantermine], [Ist Termine]),
    [],[],[],[],[],
    [],[],[],[],[],
    [],[],[],[],[],
    [],[],[],[],[],
    [],[],[],[],[],
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
