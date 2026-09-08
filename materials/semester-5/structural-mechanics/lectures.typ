#import "meta.typ": conf
#import "@preview/physica:0.9.8": dv

#show: conf.with(
  title: "Лекции по Строительной механике",
  description: "Лекции Волкова А.В. по Строительной механике",
  date: datetime(year: 2026, month: 09, day: 08),
  head: [Лекции по Строительной механике],
)

#outline()
#pagebreak(weak: true)

= Введение в линейную теорию упругости

#v(1em)

Основные гипотезы, применяемые в теории

#set enum(numbering: "1.A.")
+ Материал является сплошным (гипотеза сплошности)
+ Материал однороден
+ Материал изотропен
+ Материал упругий
  + Материал линейно упругий
+ Перемещения и их градиенты малы
#set enum(numbering: "1.")

Виды нелинейности в конструкциях
+ Нелинейный материал
+ Геометрическая нелинейность
+ Конструкционная нелинейность

== Напряжения

#v(1em)

#grid(
  columns: (1fr, 3fr),
  column-gutter: 1em,
  [
    Напряжение
    $
      sigma = lim_(dif A -> 0) dv(P, A)
    $

    Нормальное напряжение
    $
      sigma_n = lim_(dif A -> 0) dv(P_n, A)
    $

    Касательное напряжение
    $
      tau = lim_(dif A -> 0) dv(P_tau, A)
    $
  ],
  [
    #figure(
      image("source-figures/lect1-1.png"),
    )
  ],
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect1-2.png"),
    )
  ],
  [
    Рассмотрим сферу
    $
      t << R
    $

    Разрежем её пополам
    $
      P pi R^2 = sigma dot 2pi R t => sigma = (P pi R^2)/(2pi R t) = (P R)/(2t)
    $
  ],
)

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect1-3.png"),
    )
  ],
  [
    Рассмотрим цилиндрическую оболочку
    $
      L >> R >> t
    $

    После разреза #text(red)[поперек] имеем
    $
      p pi R^2 = sigma_L dot 2pi R t => sigma_L = (p pi R^2)/(2pi R t) = (p R)/(2t)
    $

    После разреза #text(blue)[вдоль] имеем
    $
      p L dot 2R = sigma_R dot 2L t => sigma_R = (p L 2R)/(2L t) = (p R)/t
    $
  ],
)

== Принцип Сен-Венана

#v(1em)

В статически эквивалентных упругих системах вдали от места приложения нагрузки напряженно-деформированное состояние (НДС) будет одинаково.

== Компоненты тензора напряжений

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Вырежем кубик малого размера из тела.

    Напряжения могут обозначаться по разному (пример приведен в лекциях по сопромату), на рисунке приведены обозначения, принятые в учебниках по Теории упругости.
  ],
  [
    #figure(
      image("source-figures/lect1-4.png"),
    )
  ],
)
