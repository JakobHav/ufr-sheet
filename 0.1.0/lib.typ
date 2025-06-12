/*
  Copyright 2025, Universität Freiburg

  author: Jakob Haverkamp <jh1444@email.uni-freiburg.de>

  Template for simple worksheet
*/

#let conf(
  date: "",
  title: "",
  semester: "",
  prof: "",
  subject: "",
  doc,
) = {
  set text(
    lang: "de",
    size: 13pt,
  )

  set page(
    width: 210mm,
    height: 297mm,
    margin: (top: 23mm, bottom: 20mm, left: 18mm, right: 18mm),
    numbering: "1",
  )

  let freiburggray = rgb(154, 154, 154)

  block(width: 100%, below: -43.5pt)[
    #align(center)[
      #block(below: -60pt)[
        #strong[
          #text(14pt)[#subject]
        ] \
        #strong[#semester]

        #text()[
          #prof
        ] \
      ]
    ]

    #align(left)[
      #block()[
        \
        Jakob Haverkamp \
        RZ: jh1444 \
        Matrikel: 5932110 \
      ]
    ]

    #align(right)[
      #block(above: -69pt)[
        #box(
          image(
            "./assets/logo.png",
            height: 127pt,
          ),
        )
      ]
    ]
  ]

  rect(width: 84%, height: 3.9pt, fill: freiburggray)

  align(center)[
    #block(above: 35pt, below: 5pt)[
      #text(15pt)[
        #strong()[#title]
      ] \
      #{
        let datelist = date.split(".")
        if datelist.len() == 3 {
          import "@preview/datify:0.1.4": month-name
          let monatname = month-name(int(datelist.at(1)), "de", true)

          date = str(datelist.at(0)) + ". " + monatname + " " + datelist.at(2)
        }
      }
      #date
    ]
  ]
  block()
  doc
}

