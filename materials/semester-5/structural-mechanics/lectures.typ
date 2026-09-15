#import "meta.typ": conf
#import "@preview/physica:0.9.8": dv, pdv

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

= Уравнения равновесия

#v(1em)

#figure(
  image("source-figures/lect2-1.png", width: 80%),
)

$
  X: (sigma_(x x) + pdv(sigma_(x x), x) dif x) dif z dif y - sigma_(x x) dif z dif y + (sigma_(y x) + pdv(sigma_(y x), y) dif y) dif x dif z - \ - sigma_(y x) dif x dif z + (sigma_(z x) + pdv(sigma_(z x), z) dif z) dif x dif y - sigma_(z x) dif x dif y + X dif x dif y dif z = 0 \
$

Силы
$
  pdv(sigma_(x x), x) + pdv(sigma_(y x), y) + pdv(sigma_(z x), z) + X = 0 \
  pdv(sigma_(x y), x) + pdv(sigma_(y y), y) + pdv(sigma_(z y), z) + Y = 0 \
  pdv(sigma_(x z), x) + pdv(sigma_(y z), y) + pdv(sigma_(z z), z) + Z = 0 \
$

Моменты
$
  (sigma_(y x) + pdv(sigma_(y x), y) dif y) dif x dif z (dif y)/2 + sigma_(y x) dif x dif z (dif y)/2 - (sigma_(x y) + pdv(sigma_(x y), x) dif x) dif z dif y (dif x)/2 - sigma_(x y) dif z dif y (dif x)/2 = 0 \
  "Убираем особо малые величины," 2sigma_(y x) - 2sigma_(x y) => sigma_(x y) = sigma_(y x)
$

Закон парности касательных напряжений
$
  sigma_(x y) = sigma_(y x) \
  sigma_(x z) = sigma_(z x) \
  sigma_(y z) = sigma_(z y)
$


Полученная система из 6 уравнений и есть уравнения равновесия

== Напряжения на наклонной плоскости

#v(1em)

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect2-2.png"),
    )
  ],
  [
    $
      S_(triangle A B C) = dif A \
      cos(overline(n), x) = n_x, space cos(overline(n), y) = n_y, space cos(overline(n), z) = n_z \
      S_(triangle O B C) = n_x dif A, space S_(triangle O B A) = n_z dif A, space S_(triangle O C A) = n_y dif A \
      sum x: -sigma_(x x) n_x dif A - sigma_(x z) n_z dif A - sigma_(x y) n_y dif A + sigma_x dif A = 0, \
      sigma_x = sigma_(x x) n_x + sigma_(x y) n_y + sigma_(x z) n_z \
      sigma_y = sigma_(x y) n_x + sigma_(y y) n_y + sigma_(y z) n_z \
      sigma_z = sigma_(x z) n_x + sigma_(y z) n_y + sigma_(z z) n_z
    $

    В матричном виде
    $
      vec(sigma_x, sigma_y, sigma_z) = mat(sigma_(x x), sigma_(x y), sigma_(x z); sigma_(x y), sigma_(y y), sigma_(y z); sigma_(x z), sigma_(y z), sigma_(z z)) vec(n_x, n_y, n_z)
    $

    Нахождение вектора напряжения
    $
      abs(overline(sigma)) = sqrt(sigma_x^2 + sigma_y^2 + sigma_z^2)
    $
  ],
)
