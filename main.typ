#import "templates/template.typ": *
#import "templates/acronyms.typ": *

#let acronyms = ()

#let abstract = [
  In diesem Projekt wird ein performantes CanBus Tool entwickelt, wälches in seiner Funtionalität bereits exestriender lösungen, zb von Vector ähnelt.
  Dabei steht allerdings die Kostenefizienz im Vordergrung, da Ählichte Tools sehr Preisintensiv sind.
  Die Implementierung erfolgt unter Verwendung moderner Webtechnologien, einschließlich React für die Benutzeroberfläche, Node native für die Komunitaion mit der Hardware und Electron für die plattformübergreifende Desktop-Anwendung. Ziel des Projekts ist es, eine benutzerfreundliche, intuitive Oberfläche zu schaffen, die es Nutzern ermöglicht, CanBus Daten einfach zu visualisieren, zu analysieren und zu schicken.
]

#show: project.with(
  title: "CAN-Monitoring Tool mit Web Technilogien",
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
)
#init-acronyms(acronyms)

////////////////////////////////////////////////
//Hauptteil - Hier wird der Inhalt geschrieben//
////////////////////////////////////////////////

#include "./chapters/Einleitung.typ"

#include "./chapters/Anlass.typ"

// #include "./chapters/Zielsetzung.typ"

#include "./chapters/Prokektmanegement.typ"

#include "./chapters/Hauptteil.typ"

// #include "./chapters/Vertiefungsteil.typ"

// #include "./chapters/Besprechungen.typ"

// #include "./chapters/Zusammenfassung.typ"

