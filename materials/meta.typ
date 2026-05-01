#import "@preview/quick-maths:0.2.1": shorthands

/// Основная метаинформация
#let conf(
  titl: [],
  desc: [],
  datet: datetime,
  head: content,
  doc,
  put_author: false,
) = {
  set text(lang: "ru")

  set document(
    title: titl,
    author: "Максим Бондаренков",
    description: desc + [. Распространяется на условиях лицензии CC-BY-SA-4.0],
    date: datet,
  )

  let header_text = {
    if put_author {
      emph(head + [. Конспект составил студент группы М1О-232БВ-24 Бондаренков М.В.])
    } else {
      emph(head)
    }
  }

  set page(
    paper: "a4",
    numbering: "1",
    header: [
      #set text(5pt)
      #h(1fr) #header_text
    ],
    margin: (
      top: 10mm,
      bottom: 15mm,
      left: 10mm,
      right: 10mm,
    ),
  )

  set par(justify: true)

  set enum(full: true)

  show figure.where(kind: table): set figure.caption(position: top)
  show circle: set align(center + horizon)

  set rect(stroke: 0.5pt)

  show: shorthands.with(
    ($+-$, $plus.minus$),
  )

  doc
}

/// Разделитель для vec()
#let delimsys = ("{", "|")

/// Раскрашивает лишь подчёркивание
#let clrundrln(color: black, equation) = block(
  stroke: (bottom: color),
  outset: (bottom: 1.5pt),
  $equation$,
)

/// У нас принято обозначать вектора палочкой над переменным, поэтому это сокращение нужно для большей читаемости
#let ov(var) = $overline(#var)$

/// Для ТММ пока
#let un(var) = $underline(#var)$
