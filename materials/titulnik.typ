/// Титульный лист для конспектов
#let titulnik(
  /// Название работы
  name: "Конспект лекций",
  /// Предмет
  subject: "",
  /// Фамилия и инициалы студента
  student: "Бондаренков М.В.",
  /// Фамилия и инициалы преподавателя
  tutor: "",
  /// Дата создание документа с работой
  date: datetime(year: 2006, month: 06, day: 23),
  /// Номер группы
  group: "М1О-232БВ-24",
) = {
  set text(size: 14pt)

  set page(
    paper: "a4",
    numbering: none,
    margin: (
      top: 10mm,
      bottom: 10mm,
      left: 10mm,
      right: 10mm,
    ),
  )

  align(
    top + center,
  )[
    Министерство науки и высшего образования РФ \
    Федеральное государственное автономное образовательное учреждение высшего профессионального образования \
    "Московский авиационный институт \
    (Национальный исследовательский университет)"
    #v(13em)
    #text(weight: "bold", size: 20pt)[#name] \
    #text(size: 13pt)[по #subject]
  ]

  align(
    horizon + right,
  )[
    #block[
      #set par(leading: 1.5em)
      #set align(left)
      Преподаватель: #tutor \
      Составил студент группы #group: #student \
    ]
  ]

  align(
    bottom + center,
  )[Москва, #date.year() г.]
}
