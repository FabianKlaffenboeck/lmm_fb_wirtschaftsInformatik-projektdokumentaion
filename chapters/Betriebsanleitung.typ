#import "../templates/acronyms.typ": acr

= Betriebsanleitung
In den folgenden Unterkapiteln wird auf die Verwendung und Konfiguration des Tools ApolloLink eingegangen. Es wird empfohlen, das Programm zusätzlich zu dieser Kurzanleitung zu öffnen und die folgenden Schritte durchzugehen. Die Benutzerführung ist möglichst einfach gestaltet; sollte es trotzdem zu Fragen kommen, wird empfohlen, auf diese Beschreibung zurückzugreifen.

#pagebreak()
== Erste Blick und Übersicht über das Tool.
#image("../images/Screenshots/{70CDABA2-EF12-46A2-8BA9-603D84F75F99}.png", height: 20em)

Wen ApolloLinkgestartet wird, fällt im ersten blick das Dashboard und die Sidebar auf, die sich am linken Rand befindet.
#linebreak()
In der Sidebar ist von oben nach unten zu finden: #linebreak()
#list(
  "CanTrace (Dabei handelt es sich im alle empfangenen Nachrichten in chronologischer Ordnung)",
  "Tabelle (Letzter wert, pro empfangenem Signal)",
  "Chart (Ein Signal über Zeit aufgetragen)",
  "Einzelner Wert (Letzter Wert eines Empfangenen Signals)",
  "Start Recording",
  "Stop Recording",
  "Help",
  "Neues Fenster (Öffnet ein neues Fenster)",
)

In dem Menü bar oben ist der Selektor zwischen Dashboard und Settings anzutreffen, zudem eine Auswahl für Dark oder Light Mode.

#pagebreak()
== verwendend des Dashboards und grundlegende Funktionen
#image("../images/Screenshots/{EDFF57C1-9961-461B-A5BF-1F4C13FC49B0}.png", height: 20em)

Im Dashboard kann durch Anklicken eines der oben beschriebenen Sidebar-Elemente ein neues Visualisierungselement erstellt werden. Durch Ziehen an der rechten unteren Ecke wird die Größe und durch Ziehen auf der gesamten Fläche die Position bestimmt. Dabei ist zu beachten, dass alle Elemente in der Horizontalen gepackt werden, also automatisch alle Hohlräume entfernt werden.

#pagebreak()
== verwendung eines Visualisierung Elements
In Vollendendem Beispiele bar besonders  auf das Element "Einzelner Wert" eingegangen, alle Funktionen sind analog zu weiteren Elementen.

#image("../images/Screenshots/{055D86DD-772E-4962-9C48-F8983C89DA12}.png", height: 20em)

Durch Rechtsklick auf eine Element wird das Kontext Menü aufgerufen, das folgende Funktionalitäten beinhaltet:
#linebreak()

#list(
  "Auswahl des Signales aus der DBC Datei",
  "Festlegen des Filter Intervalls (es wir das der durchschnitt über N Nachrichten berechnet)",
)

#image("../images/Screenshots/{75EE0AA8-7D44-4CE7-9AA1-90EEB9D56439}.png", height: 20em)

Im Menüpunkt der Auswahl einer DBC-Datei kann nach Netzwerk und #acr("CAN")-Node gefiltert werden. Sollte ein Filter angewendet werden, wird automatisch die Liste aktualisiert und das aktuell ausgewählte Element delektiert. Durch Klicken auf den linken Auswahlbereich wird das Häkchen bei dem Signal gesetzt, welches zur Visualisierung genutzt werden soll.

#pagebreak()
== verwaltung und zuweisung von #acr("CAN") interfaces
#image("../images/Screenshots/{5E68165B-80BA-42DD-B20A-647EFF1E1E53}.png", height: 20em)

Im oberen linken Bereich ist die Übersicht aller zur Verfügung stehenden Interfaces platziert. Es werden Parameter wie ID, Name, Verfügbarkeitsstatus und das ausgewählte Netzwerk angezeigt. Jedem Interface kann jeweils ein Netzwerk zugewiesen werden, welches zur weiteren Auswertung verwendet werden soll.

#pagebreak()
#image("../images/Screenshots/{CDFF2914-B936-4CFA-936B-3F60A06A3A8A}.png", height: 20em)
Jedes #acr("CAN")-Bus interface kann einem Netzwerk zugewiesen werden. Dabei ist zu beachten,
sollte eine interface Hardware mehrere Anschlüsse haben, so wird jeder Bus Interface als eigener #acr("CAN")-Channel aufgelistet.


#pagebreak()
== Node werwaltung
#image("../images/Screenshots/{F90B9BC5-281D-42B9-868A-11CEF96E836D}.png", height: 20em)
#acr("CAN") Nodes werden auf der linken Hälfte der Einstellungen verwaltet. Dabei ist zu beachten das grundsätzlich unbegrenzt viele Nodes
angelegt werden können, allerdings ist auf die Bus-auslastung zu achten. Jeder Node zeichnet sich durch ein Netzwerk und eine zugewiesene #acr("DBC")-Datei aus.
Der Node Name sollte kurz und prägnant sein, um die Auflistung übersichtlich zu halten.


#pagebreak()
== DBC Verwaltung
#image("../images/Screenshots/{6EF02975-9485-424E-BC79-BCDEF626327B}.png", height: 20em)

#acr("DBC")-Dateien können mittels eines Klicks auf "Add DBC" ausgewählt und hochgeladen werden.
Der Name kann nachträglich noch verändert werden allerdings wird ebenso davon abgeraten, da es zu Verwirrungen oder Verwechslungen kommen kann,
sollte eine ähnliche Datei noch auf dem PC des Anwenders vorhanden sein.
