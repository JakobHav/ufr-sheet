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
    margin: (top: 22mm, bottom: 20mm, left: 16mm, right: 16mm),
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
    #text(15pt)[
      #strong()[#title]
    ] \
    #date
  ]
  doc
}

