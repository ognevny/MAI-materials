#let conf(
  titl: [],
  desc: [],
  datet: datetime,
  head: content,
  doc,
) = {
  set text(lang: "ru")

  set document(
    title: titl,
    author: "Максим Бондаренков",
    description: desc + [. Распространяется на условиях лицензии CC-BY-SA-4.0],
    date: datet,
  )

  set page(
    paper: "a4",
    numbering: "1",
    header: [
      #set text(8pt)
      #h(1fr) #emph(head)
    ],
  )

  set par(justify: true)

  show figure.where(kind: table): set figure.caption(position: top)

  doc
}
