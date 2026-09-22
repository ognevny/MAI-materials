#import "meta.typ": conf
#import "@preview/physica:0.9.8": dv, mdet, pdv

#show: conf.with(
  title: "Лекции по Строительной механике",
  description: "Лекции Волкова А.В. по Строительной механике",
  date: datetime(year: 2026, month: 09, day: 08),
  head: [Лекции по Строительной механике],
)

#let sp = math.op("sp")

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
      sigma_(n x) = sigma_(x x) n_x + sigma_(x y) n_y + sigma_(x z) n_z \
      sigma_(n y) = sigma_(x y) n_x + sigma_(y y) n_y + sigma_(y z) n_z \
      sigma_(n z) = sigma_(x z) n_x + sigma_(y z) n_y + sigma_(z z) n_z
    $

    В матричном виде
    $
      vec(sigma_x, sigma_y, sigma_z) = mat(sigma_(x x), sigma_(x y), sigma_(x z); sigma_(x y), sigma_(y y), sigma_(y z); sigma_(x z), sigma_(y z), sigma_(z z)) vec(n_x, n_y, n_z)
    $

    Нахождение вектора напряжения
    $
      abs(overline(sigma_n)) = sqrt(sigma_(n x)^2 + sigma_(n y)^2 + sigma_(n z)^2)
    $
  ],
)

Система при касательных напряжениях, равных нулю
$
  cases(
    (sigma_(x x) - sigma) n_x + sigma_(x y) n_y + sigma_(x z) n_z = 0,
    sigma_(x y) n_x + (sigma_(y y) - sigma) n_y + sigma_(y z) n_z = 0,
    sigma_(x z) n_x + sigma_(y z) n_y + (sigma_(z z) - sigma) n_z = 0,
  )
$

Характеристическое уравнение
$
  sigma^3 - I_1 sigma^2 + I_2 sigma - I_3 = 0,
$
где $I_1 = sigma_(x x) + sigma_(y y) + sigma_(z z) = tr(sigma_(i j)) = sp(sigma_(i j))$, $I_2 = mdet(sigma_(x x), sigma_(x y); sigma_(x y), sigma_(y y)) + mdet(sigma_(x x), sigma_(x z); sigma_(x z), sigma_(z z)) + mdet(sigma_(y y), sigma_(y z); sigma_(y z), sigma_(z z))$, $I_3 = mdet(sigma_(x x), sigma_(x y), sigma_(x z); sigma_(x y), sigma_(y y), sigma_(y z); sigma_(x z), sigma_(y z), sigma_(z z))$

Решения характеристического уравнения: $sigma_1 >= sigma_2 >= sigma_3$

== Круги Мора

#v(1em)

#figure(
  image("source-figures/lect3-1.png", width: 65%),
)

Вспомним задачу с цилиндром с внутренним давлением
$
  sigma_l = (pi R)/(2t), space sigma_R = (pi R)/t
$
Вырежем маленький элемент, который в виду размеров представим маленьким

#grid(
  columns: (2.5fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect3-2.png"),
    )
  ],
  [
    При вращении площадки на $45degree$ получим
    $
      tau_max = ((pi R)/t - (pi R)/(2t))/2 = (pi R)/(4t)
    $
  ],
)

В случае с сферической оболочкой круг Мора выражается в точку, касательные напряжения при повороте площадки не возникают.

== Напряжения в произвольной площадке

#v(1em)

Напряжение, действующее на площадке
$
  sigma_n = sqrt(sigma_(n x)^2 + sigma_(n y)^2 + sigma_(n z)^2)
$

Нормальная компонента
$
  S_n & = sigma_(n x) n_x + sigma_(n y) n_y + sigma_(n z) n_z = \ & = (sigma_(x x) n_x + sigma_(x y) n_y + sigma_(x z) n_z) n_x + (sigma_(x y) n_x + sigma_(y y) n_y + sigma_(y z) n_z) n_y + (sigma_(x z) n_x + sigma_(y z) n_y + sigma_(z z) n_z) n_z = \ & = sigma_(x x) n_x^2 + sigma_(y y) n_y^2 + sigma_(z z) n_z^2 + 2sigma_(x y) n_x n_y + 2sigma_(y z) n_y n_z + 2sigma_(x z) n_x n_z
$

Касательная компонента
$
  tau_n = sqrt(sigma_n^2 - S_n^2)
$

Граничные условия (приложено давление $p$)
$
  sigma_(x x) n_x + sigma_(x y) n_y + sigma_(x z) n_z = p_x \
  sigma_(x y) n_x + sigma_(y y) n_y + sigma_(y z) n_z = p_y \
  sigma_(x z) n_x + sigma_(y z) n_y + sigma_(z z) n_z = p_z \
  [sigma_x] = vec(delim: "[", sigma_(x x), sigma_(x y), sigma_(x z)), space [sigma_y] = vec(delim: "[", sigma_(x y), sigma_(y y), sigma_(y z)), space [sigma_z] = vec(delim: "[", sigma_(x z), sigma_(x z), sigma_(z z)), space [p] = vec(delim: "[", p_x, p_y, p_z) \
  [sigma_x] n_x + [sigma_y] n_y + [sigma_z] n_z = [p]
$

== Тензор деформации. Формулы Коши

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect3-3.png"),
    )
  ],
  [
    $
      arrow(u) = vec(u_x, u_y, u_z)
    $

    Предполагаем, что $M'A' = (M'A'')/(cos alpha_x) approx M'A''$ и $M'B' = (M'B'')/(cos alpha_y) approx M'B''$

    Деформации
    $
      & epsilon_(x x) = (dif x + u_x + pdv(u_x, x) dif x - u_x - dif x)/(dif x) = pdv(u_x, x) \
      & epsilon_(y y) = pdv(u_y, y)
    $
  ],
)

Углы
$
  alpha_x approx sin alpha_x = (A'A'')/(M'A'') = 1/(1 + epsilon_(x x)) pdv(u_y, x) approx pdv(u_y, x),
  alpha_y approx pdv(u_x, y),
$
где $A'A'' = pdv(u_y, x) dif x$, $M'A'' = dif x (1 + epsilon_(x x))$

Сдвиговая деформация
$
  gamma_(x y) = pdv(u_x, y) + pdv(u_y, x)
$

Соотношения Коши
$
  & epsilon_(i j) = 1/2 (pdv(u_i, x_j) + pdv(u_j, x_i)) \
  & epsilon_11 = 1/2 (pdv(u_1, x_1) + pdv(u_1, x_1)) = pdv(u_1, x_1) \
  & epsilon_12 = 1/2 (pdv(u_1, x_2) + pdv(u_2, x_1))
$

Тензор деформации
$
  mat(epsilon_(x x), gamma_(x y), gamma_(x z); gamma_(x y), epsilon_(y y), gamma_(y z); gamma_(x z), gamma_(y z), epsilon_(z z))
$

$
  epsilon_(i j) = mat(pdv(u_x, x), 1/2 (pdv(u_x, y) + pdv(u_y, x)), 1/2 (pdv(u_x, z) + pdv(u_z, x)); 1/2 (pdv(u_y, x) + pdv(u_x, y)), pdv(u_y, y), 1/2 (pdv(u_y, z) + pdv(u_z, y)); 1/2 (pdv(u_x, z) + pdv(u_z, x)), 1/2 (pdv(u_z, y) + pdv(u_y, z)), pdv(u_z, z))
$

=== Объемная деформация

#v(1em)

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect3-4.png"),
    )
  ],
  [
    $
      dif V & = dif x dif y dif z \
      dif V' & = (1 + epsilon_(x x)) dif x (1 + epsilon_(y y)) dif y (1 + epsilon_(z z)) dif z \
      & = (1 + epsilon_(x x) + epsilon_(y y) + epsilon_(z z) + epsilon_(x x) epsilon_(y y) + epsilon_(x x) epsilon_(z z) + epsilon_(y y) epsilon_(z z) + epsilon_(x x) epsilon_(y y) epsilon_(z z)) dif x dif y dif z
    $

    Объемная деформация
    $
      (dif V' - dif V)/(dif V) = epsilon_(x x) + epsilon_(y y) + epsilon_(z z) = theta
    $
  ],
)

=== Уравнения совместности деформаций Сен-Венана

#v(1em)

$
  epsilon_(x x) = pdv(u_x, x), space epsilon_(y y) = pdv(u_y, y) \
  pdv(epsilon_(x x), y, 2) + pdv(epsilon_(y y), x, 2) = pdv(u_x, x, y, [1, 2]) + pdv(u_y, y, x, [1, 2]) = pdv(, x, y) (pdv(u_x, y) + pdv(u_y, x))
$

Соответственно первые 3 уравнения совместности
$
  pdv(epsilon_(x x), y, 2) + pdv(epsilon_(y y), x, 2) = pdv(, x, y) gamma_(x y) \
  pdv(epsilon_(x x), z, 2) + pdv(epsilon_(z z), x, 2) = pdv(, x, z) gamma_(x z) \
  pdv(epsilon_(y y), z, 2) + pdv(epsilon_(z z), y, 2) = pdv(, y, z) gamma_(y z)
$

А также посчитаем
$
  pdv(gamma_(x y), z) - pdv(gamma_(y z), x) + pdv(gamma_(z x), y) = pdv(, z) (pdv(u_y, x) + pdv(u_x, y)) - pdv(, x) (pdv(u_z, y) + pdv(u_y, z)) + pdv(, y) (pdv(u_x, z) + pdv(u_z, x)) \
  pdv(, x) (pdv(, z) (pdv(u_x, y)) + pdv(, y) (pdv(u_x, z))) = 2pdv(epsilon_(x x), y, z)
$

Получим ещё 3 уравнения
$
  pdv(, x) (pdv(gamma_(x y), z) - pdv(gamma_(y z), x) + pdv(gamma_(z x), y)) = 2pdv(epsilon_(x x), y, z) \
  pdv(, y) (pdv(gamma_(y z), x) - pdv(gamma_(z x), y) + pdv(gamma_(x y), z)) = 2pdv(epsilon_(y y), x, z) \
  pdv(, z) (pdv(gamma_(z x), y) - pdv(gamma_(x y), z) + pdv(gamma_(y z), x)) = 2pdv(epsilon_(z z), x, y)
$
