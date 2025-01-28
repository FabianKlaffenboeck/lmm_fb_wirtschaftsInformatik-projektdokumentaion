#import "templates/template.typ": *
#import "templates/acronyms.typ": *

//mit #acr("Abkürzung") bzw #acrpl("Abkürzung")referenziert werden.
#let acronyms = (
  //"Abkürzung": ("Vollständige Bezeichnung", "Plural")
  "CAN": ("Controller Areal Network", "x"),
  "DBC": ("Database Can", "x"),
  "UX": ("user experience", "x"),
  "UI": ("User interface", "x"),
  "PO": ("Product Owner", "x"),
  "CICD": ("Continuous integration and continuous delivery", "x"),
  "LIB": ("Library", "x"),
  "JS": ("JavaScript", "x"),
  "TS": ("TypeScript", "x"),
  "IDE": ("Integrated Development Environment", "x"),
  "NPM": ("Node Packet Manager", "x"),
  "NPX": ("Node Packet Executor", "x"),
  "API": ("Application Programming Interface", "x"),
  "IPC": ("inter process communication", "x"),
  "DLC": ("Data length Code", "x"),
  "ID": ("Identifier", "x"),
  "CLI": ("Commandline Interface", "x"),
  "EXE": ("Executable", ""),
)

#let abstract = [
  In diesem Projekt wird ein performantes CanBus Tool entwickelt, welches in seiner Funktionalität bereits existierender Lösungen, zb von Vector ähnelt. Dabei steht allerdings die kosten Effizienz im Vordergrund, da Ähnliche Tools sehr Preisintensiv sind. Die Implementierung erfolgt unter Verwendung moderner Webtechnologien, einschließlich React für die Benutzeroberfläche, Node native für die Kommutation mit der Hardware und Electron für die plattformübergreifende Desktop-Anwendung. Ziel des Projekts ist es, eine benutzerfreundliche, intuitive Oberfläche zu schaffen, die es Nutzern ermöglicht,
]

#show: project.with(
  title: "CAN-Monitoring Tool mit Web Technologie",
  authors: (
    (
      name: "Fabain Klaffenboeck",
      birthday: "21.09.2004",
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
#pagebreak()
#include "./chapters/Anlass.typ"
#pagebreak()
#include "./chapters/Zielsetzung.typ"
#pagebreak()
#include "./chapters/Prokektmanegement.typ"
#pagebreak()
#include "./chapters/Hauptteil.typ"
#pagebreak()
#include "./chapters/Vertiefungsteil.typ"
#pagebreak()
#include "./chapters/Betriebsanleitung.typ"
#pagebreak()
#include "./chapters/Besprechungen.typ"
#pagebreak()
#include "./chapters/Zusammenfassung.typ"

