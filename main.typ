#import "templates/template.typ": *
#import "templates/acronyms.typ": *

#let acronyms = (
  "PTP": ("Praxistransferprojekt", "Praxistransferprojekte"),
)

#let appendix = [
    == Erster  Anhang Appendix <anhang1>
    test test 
    #pagebreak()

    == Zweiter Anhang  <anhang2>
      Derzeit wird noch kein PDF Embedding unterstützt. Um PDFs einzubinden, müssen diese als Bild eingebunden werden (z.B. PDF2SVG).
    ]

#let abstract = [
  #lorem(200)
]

#show: project.with(
  title: "Thema der Diplomarbeit",
  authors: (
    (
    name: "Fabain Klaffenboeck", 
    birthday: "21.09.2004"
    ),
  ),
  betreuer: "Christoph Meisinger MSc. MAS",
  modul: "Wirtschaftsinformatik",
  abgabedatum: datetime.today().display("[day].[month].[year]"),
  language: "de",
  abstract: abstract,
  acronyms: acronyms,
  appendix: appendix,
)
#init-acronyms(acronyms)

////////////////////////////////////////////////
//Hauptteil - Hier wird der Inhalt geschrieben//
////////////////////////////////////////////////

= Einführung <einführung>
#lorem(200)

== Anlass und Problemhintergrund
#lorem(200)

== Zielsetzung
#lorem(100)


= Theoretische Grundlagen
#lorem(200)


= Andwendung auf die Praxis
#lorem(200)


= Kritische Reflexion
#lorem(200)


= Fazit/Schlussbetrachtung
#lorem(200)

////////////////////////////////////////////////////////////////////////
//Diverse Snippets zur Hilfe, alles nachstehende kann gelöscht werden!//
////////////////////////////////////////////////////////////////////////

// = HILFEN (ENTFERNEN)
// Verschiedene Snippets zur Hilfe!

// == Quellen
// Referenziert wird mit \@ - Quelle: @Vertrau.mir.Bruder[120 ff.]
// Zu sehen in @anhang1.
// Wie bereits in @einführung beschrieben

// == Bilder
// #figure(
//   image("images/logos/HS-OS-Logo-Standard-rgb.jpg", width: 80%),
//   caption: [Logo der Hochschule.],
// ) <HS-logo>

// @HS-logo zeigt das Logo der Hochschule

// == Acronyms
// Abkürzungen werden nur bei der ersten Verwendung voll ausgeschrieben: #acr("PTP"). Bei der zweiten Verwendung nur die Kurzform: #acr("PTP"). Der Plural ist auch möglich: #acrpl("PTP")

// == Code Snippet
//   ```go
//   package main

//   import "fmt"

//   func main() {
//       fmt.Println("Some Code!");
//   }
//   ```

// == Mathe
// Mathematische Ausdrücke werden zwischen Dollarzeichen (\$) geschrieben.
// $ 1/2 < /2(x+1) $ <coolefunktion>
// Und können @coolefunktion referenziert werden!

// Wir nutzen #symbols.Gesamtkostenfunktion um eine Symbol darzustellen.

// == Tabellen

// #figure(
//   table(
//     columns: (1fr, 1fr),
//     inset: 10pt,
//     align: horizon,
//     [*Deutsch*],
//     [*Englisch*],
//     [Boot],
//     [boat],
//     [Haus],
//     [house]),
//     caption: [Übersetzungen],
// )



