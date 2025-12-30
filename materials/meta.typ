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
    description: desc,
    date: datet,
  )

  set page(
    paper: "a4",
    numbering: "1",
    header: head, // как здесь сделать весь прикол?
  )

  doc
}
