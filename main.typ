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


= Einleitung
#lorem(2000)

== Anlass und Problemhintergrund
#lorem(3000)

== Zielsetzung
#lorem(3000)


= Prokektmanegement
#lorem(100)

== Projektauftrag
#lorem(100)

== Projektzielplan
#lorem(100)

== Projektstrukturplan
#lorem(100)

== Arbeitspaket-Spezifikation
#lorem(100)

== Projektmeilensteinplan
#lorem(100)

== Projektkostenplan
#lorem(100)


= Hauptteil
#lorem(6000)


= Vertiefungsteil
#lorem(6000)


= Zusammenfassung, ergebnisse des Arbeitsprozesses und Reflexion
#lorem(2000)