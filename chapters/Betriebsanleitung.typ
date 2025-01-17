#import "../templates/acronyms.typ": acr

= Betriebsanleitung
In den folgenden Unterkapiteln wird auf die Verwendung und Konfiguration des Tools ApolloLink eingegangen. Es wird empfohlen, das Programm zusätzlich zu dieser Kurzanleitung zu öffnen und die folgenden Schritte durchzugehen. Die Benutzerführung ist möglichst einfach gestaltet; sollte es trotzdem zu Fragen kommen, wird empfohlen, auf diese Beschreibung zurückzugreifen.

#pagebreak()
== Erste Blick und übersicht über das Tool.
#image("../images/Screenshots/{70CDABA2-EF12-46A2-8BA9-603D84F75F99}.png", height: 20em)

Wen ApolloLink gestarted wird, fälllt im äsrten blick das Dashboard und die Sidebar auf, die sich am Linken Rand befindet.
#linebreak()
In der Sidebar sidn von oben nach unten zu finden: #linebreak()
#list(
  "CanTrace (Dabei Handelt es sich im alle empfangenen Nachrichten in cronologischer ortnung)",
  "Tabelle (Letzter wert, pro emfangenenem Signal)",
  "Chart (Ein signal über zeit aufgetragen)",
  "Einzelner Wert (Letzter wert eines Emfangenen Signals)",
  "Start Recording",
  "Stop Recording",
  "Help",
  "Neues Fenster (Öffnet ein neues Fenster)",
)

In der Menue bar oben ist der Selector zwischern Dashboard und Settings anzutreffen, zudem eine auswahl für dark oder Light mode.

#pagebreak()
== verwendund des Dahsboards und grundlegende Funktionen
#image("../images/Screenshots/{EDFF57C1-9961-461B-A5BF-1F4C13FC49B0}.png", height: 20em)

Im Dashboard kann durch Anklicken eines der oben beschriebenen Sidebar-Elemente ein neues Visualisierungselement erstellt werden. Durch Ziehen an der rechten unteren Ecke wird die Größe und durch Ziehen auf der gesamten Fläche die Position bestimmt. Dabei ist zu beachten, dass alle Elemente in der Horizontalen gepackt werden, also automatisch alle Hohlräume entfernt werden.

#pagebreak()
== verwendung eines Visiulisurungs Elements
In Volgenendem beispile bir besonderns auf das Element "Einzelner Wert" eingegangen, alle funtionen sind Analog zu weiteren elementen.

#image("../images/Screenshots/{055D86DD-772E-4962-9C48-F8983C89DA12}.png", height: 20em)

Durch Rechtsklick auf eine Elemet wird das Kontext menü aufgerufen, das volgenede Funtionalitäten beinhalted:#linebreak()
#list(
  "Euswahl des Signales aus der DBC Datei",
  "Festlegen des Filter Intervals (es wir das der druchschnitt über N Nachrichen berechnet)",
)

#image("../images/Screenshots/{75EE0AA8-7D44-4CE7-9AA1-90EEB9D56439}.png", height: 20em)

Im Menüpunkt der Auswahl einer DBC-Datei kann nach Netzwerk und CAN-Node gefiltert werden. Sollte ein Filter angewendet werden, wird automatisch die Liste aktualisiert und das aktuell ausgewählte Element deselektiert. Durch Klicken auf den linken Auswahlbereich wird das Häkchen bei dem Signal gesetzt, welches zur Visualisierung genutzt werden soll.

#pagebreak()
== verwaltung und zuweisung von Can interfaces
#image("../images/Screenshots/{5E68165B-80BA-42DD-B20A-647EFF1E1E53}.png", height: 20em)

Im oberen linken Bereich ist die Übersicht aller zur Verfügung stehenden Interfaces platziert. Es werden Parameter wie ID, Name, Verfügbarkeitsstatus und das ausgewählte Netzwerk angezeigt. Jedem Interface kann jeweils ein Netzwerk zugewiesen werden, welches zur weiteren Auswertung verwendet werden soll.

#image("../images/Screenshots/{CDFF2914-B936-4CFA-936B-3F60A06A3A8A}.png", height: 20em)
#lorem(50)

#pagebreak()
== Node werwaltung
#image("../images/Screenshots/{F90B9BC5-281D-42B9-868A-11CEF96E836D}.png", height: 20em)
#lorem(50)

#pagebreak()
== DBC Verwaltung
#image("../images/Screenshots/{6EF02975-9485-424E-BC79-BCDEF626327B}.png", height: 20em)
#lorem(50)
