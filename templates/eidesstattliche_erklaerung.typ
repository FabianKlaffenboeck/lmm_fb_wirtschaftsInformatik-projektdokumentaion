#let eidesstattliche_erklaerung(title) = {[
    #set par(justify: true, first-line-indent: 0pt)
    #v(8em)
    #heading(outlined: false, numbering: none, [Eidesstattliche Erklärung])
    Ich/Wir erkläre/n, dass die vorliegende Diplomarbeit von mir/uns selbst verfasst wurde 
    und dass ich/wir dazu keine anderen als die angeführten Behelfe verwendet habe/n.
    Außerdem habe/n ich/wir die Reinschrift der Diplomarbeit einer Korrektur unterzogen und ein Belegexemplar verwahrt.


    #v(40pt)
    #align(center, grid(
        columns: (1fr,1fr),
        rows: (0pt, 0pt),
        gutter: (8pt),
        align(bottom, datetime.today().display("Linz, [day].[month].[year]")),
        align(bottom, image("../images/unterschrift.png", height: 15pt)),
        overline(extent: 20pt,offset: -10pt,[Ort, Datum]),
        overline(extent: 20pt,offset: -10pt,[Unterschrift]),
    ))
]}