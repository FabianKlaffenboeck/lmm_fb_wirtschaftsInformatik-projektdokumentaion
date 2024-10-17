#import "templates/template.typ": *
#import "templates/acronyms.typ": *

#let acronyms = (
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
  title: "CAN-Monitoring Tool mit Web Technilogie",
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

// #include "./chapters/Einleitung.typ"

// #include "./chapters/Anlass.typ"

// #include "./chapters/Zielsetzung.typ"

#include "./chapters/Prokektmanegement.typ"

// #include "./chapters/Hauptteil.typ"

// #include "./chapters/Vertiefungsteil.typ"

// #include "./chapters/Zusammenfassung.typ"

