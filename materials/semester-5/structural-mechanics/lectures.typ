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

== Закон Гука

#v(1em)

Для одномерного случая
$
  sigma = E epsilon => epsilon = sigma/E
$

Для трехмерного случая
$
  & epsilon_11 = sigma_11/E - mu/E sigma_22 - mu/E sigma_33 + 0sigma_12 + 0sigma_13 + 0sigma_23, \
  & epsilon_22 = -mu/E sigma_11/E + 1/E sigma_22 - mu/E sigma_33 + 0sigma_12 + 0sigma_13 + 0sigma_23, \
  & epsilon_33 = -mu/E sigma_11/E - mu/E sigma_22 + 1/E sigma_33 + 0sigma_12 + 0sigma_13 + 0sigma_23, \
  & gamma_12 = 0sigma_11 + 0sigma_22 + 0sigma_33 + 1/G sigma_12 + 0sigma_13 + 0sigma_23, \
  & gamma_13 = 0sigma_11 + 0sigma_22 + 0sigma_33 + 0sigma_12 + 1/G sigma_13 + 0sigma_23, \
  & gamma_23 = 0sigma_11 + 0sigma_22 + 0sigma_33 + 0sigma_12 + 0sigma_13 + 1/G sigma_23,
$
где $G = E/(2(1 + mu))$, $mu$ -- коэффициент Пуассона
$
  nu = mu = -epsilon_"поперечная"/epsilon_"продольная", space -1 < mu < 0.5
$
Материалы с отрицательным коэффициентом Пуассона называются ауксетиками

Можно записать коэффициенты в матричном виде
$
  vec(epsilon_11, epsilon_22, epsilon_33, gamma_12, gamma_13, gamma_23) = mat(
    C_11, C_12, C_13, C_14, C_15, C_16;
    C_21, C_22, C_23, C_24, C_25, C_26;
    C_31, C_32, C_33, C_34, C_35, C_36;
    C_41, C_42, C_43, C_44, C_45, C_46;
    C_51, C_52, C_53, C_54, C_55, C_56;
    C_61, C_62, C_63, C_64, C_65, C_66;
  ) vec(sigma_11, sigma_22, sigma_33, sigma_12, sigma_13, sigma_23)
$

Отсюда имеем
$
  epsilon_(x x) = 1/E (sigma_(x x) - nu (sigma_(y y) + sigma_(z z))) \
  epsilon_(y y) = 1/E (sigma_(y y) - nu (sigma_(x x) + sigma_(z z))) \
  epsilon_(z z) = 1/E (sigma_(z z) - nu (sigma_(x x) + sigma_(y y))) \
  gamma_(x y) = 1/G sigma_(x y) \
  gamma_(y z) = 1/G sigma_(y z) \
  gamma_(z x) = 1/G sigma_(z x)
$

Суммарно получим
$
  epsilon_(x x) + epsilon_(y y) + epsilon_(z z) = 1/E (sigma_(x x) + sigma_(y y) + sigma_(z z) - 2mu (sigma_(x x) + sigma_(y y) + sigma_(z z)))
$

Обозначим
$
  sigma_0 = 1/3 (sigma_(x x) + sigma_(y y) + sigma_(z z)) \
  theta = epsilon_(x x) + epsilon_(y y) + epsilon_(z z)
$

Итого
$
  theta = underbrace((3(1 - 2mu))/E, K space ("или" B) \ "объемный модуль" \ "упругости") sigma_0
$

Запишем
$
  epsilon_(x x) = 1/E (sigma_(x x) + mu sigma_(x x) - mu (sigma_(x x) + sigma_(y y) + sigma_(z z))) = (1 + mu)/E sigma_(x x) - (3mu)/E sigma_0 = 1/(2G) sigma_(x x) - (3mu)/E E/(3(1 - 2mu)) theta = sigma_(x x)/(2G) - mu/(1 - 2mu) theta
$

Следовательно
$
  sigma_(x x) = 2G epsilon_(x x) + lambda theta,
$
где $lambda$ -- постоянная Коши
$
  lambda = (2G mu)/(1 - 2mu) = (E mu)/((1 + mu)(1 - 2mu))
$

Остальные напряжения
$
  sigma_(y y) = 2G epsilon_(y y) + lambda theta \
  sigma_(z z) = 2G epsilon_(z z) + lambda theta \
  sigma_(x y) = G gamma_(x y) \
  sigma_(x z) = G gamma_(x z) \
  sigma_(y z) = G gamma_(y z)
$

=== Уравнение теории упругости в перемещениях

#v(1em)

$
  pdv(sigma_(x x), x) + pdv(sigma_(x y), y) + pdv(sigma_(x z), z) + X = 0 \
  sigma_(x x) = 2G pdv(u_x, x) + lambda theta \
  sigma_(x y) = G (pdv(u_x, y) + pdv(u_y, x)) \
  sigma_(x z) = G (pdv(u_z, x) + pdv(u_x, z)) \
  theta = pdv(u_x, x) + pdv(u_y, y) + pdv(u_z, z) \
  2G pdv(u_x, x, 2) + lambda pdv(theta, x) + G (pdv(u_x, y, 2) + pdv(u_y, x, y)) + G (pdv(u_z, x, z) + pdv(u_x, z, 2)) + X = 0 \
  G (pdv(u_x, x, 2) + pdv(u_x, y, 2) + pdv(u_x, z, 2)) + G pdv(, x) (pdv(u_x, x) + pdv(u_y, y) + pdv(u_z, z)) + lambda pdv(theta, x) + X = 0
$

Получим уравнения Ламе
$
  G laplace u_x + (G + lambda) pdv(theta, x) + X = 0 \
  G laplace u_y + (G + lambda) pdv(theta, y) + Y = 0 \
  G laplace u_z + (G + lambda) pdv(theta, z) + Z = 0
$

= Балочно-стержневые системы

== Кинематический анализ

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Формула Чебышева
    $
      "2D:" 2У + 3Д - С = W, \
      "3D:" 3У + 6Б - С = W,
    $
    где У -- узел, Д -- диск, Б -- блок, С -- стержень, $W$ -- число степеней свободы. Стержни работают только на растяжение-сжатие.

    Мгновенные механизмы позволяют телу немного передвинуться (примеры: узел закреплен двумя стержнями, попарно параллельными друг другу, линия опорных стержней пересекаются в одной точке)
  ],
  [
    #figure(
      image("source-figures/lect4-1.png"),
    )
  ],
)

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    Свободные
    #figure(
      image("source-figures/lect4-2.png"),
    )
  ],
  [
    Нормально закрепленные
    #figure(
      image("source-figures/lect4-3.png"),
    )
  ],
)

#grid(
  columns: (1fr, 2.5fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      (
        image("source-figures/lect4-4.png"),
        image("source-figures/lect4-5.png"),
        image("source-figures/lect4-6.png"),
      ).join(),
    )
  ],
  [
    Соответственно сверху вниз
    $
      W = 4 dot 2 + 3 dot 0 - 8 = 0, \
      W = 0 dot 2 + 3 dot 1 - 4 = -1, \
      W = 3Д - 2(Ш) - С,
    $
    где $Ш$ -- шарнир
  ],
)

#grid(
  columns: (4fr, 1fr),
  column-gutter: 1em,
  [
    Необходимый признак геометрической неизменяемости -- расстояние между точками тела меняется без деформации
    + Нормально закрепленная система -- $W <= 0$
    + Плоская свободная система -- $W <= 3$
    + Пространственная свободная система -- $W <= 6$

    Степень статической неопределимости для нормально закрепленной системы
    $
      N = -W
    $
  ],
  [
    #figure(
      image("source-figures/lect4-7.png"),
    )
  ],
)

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    #figure(
      (
        image("source-figures/lect4-8.png"),
        image("source-figures/lect4-9.png"),
      ).join(),
    )
  ],
  [
    Для верхней системы имеем
    $
      cases(
        N_1 a + N_2 (a + b) = 0,
        N_1 a + N_2 (a + b) = 0,
      )
    $
    Количество решений бесконечно большое

    Для нижней системы
    $
      cases(
        N_1 a + N_2 (a + b) = 0,
        N_1 (a + b) + N_2 a = 0,
      )
    $
    Получается тривиальное решение $N_1 = N_2 = 0$
  ],
)

=== Метод вырезания узлов

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/lect4-10.png"),
    )
  ],
  [
    $
      W = 2У - 8 = 0
    $

    Запишем уравнения для нахождения реакций
    $
      sum x: R_(4x) + P = 0 => R_(4x) = -P \
      sum y: R_(4y) + R_(3y) => R_(4y) = -R_(3y) \
      sum M_4: -R_(3y) a + P a => R_(3y) = P
    $
  ],
)

Запишем уравнения для первого узла
$
  sum x: N_12 = 0 \
  sum y: N_14 = 0
$

Для третьего
$
  sum x: N_34 = 0 \
  sum y: N_32 + P => N_32 = -P
$

Для второго
$
  sum y: -N_24 dot 1/sqrt(2) - N_23 = 0 => N_24 = -sqrt(2) N_23 = sqrt(2) P
$

#figure(
  image("source-figures/lect4-11.png"),
)

Вырежем крайний справа узел
$
  sum y: -P - 1/2 N_89 = 0 => N_89 = -2P \
  sum x: -N_87 - N_89 dot sqrt(3)/2 = 0 => N_87 = -P sqrt(3)
$

Теперь девятый
$
  sum y': N_97 = 0 \
  sum x': N_98 - N_910 = 0 => N_98 = N_910
$

Седьмой узел
$
  sum y: N_710 = 0 \
  sum x: N_87 - N_67 = 0 => N_67 = N_87 = -P sqrt(3)
$


#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect4-12.png"),
    )
  ],
  [
    $
      W = 2 dot 6 - 12 = 0
    $

    Часть решения упущена, вот значения из вырезанных узлов
    $
      N_12 = 0, space N_16 = 0, space N_25 = 0, space N_34 = 0, \ N_32 = P, space N_54 = P/2, space N_24 = -sqrt(2)/2 P
    $

    Можно вырезать не только узлы, но и участки
    $
      sum M_6: N_12 = 0 \
      sum y: N_62 dot 1/sqrt(2) - P/2 = 0 => N_62 = sqrt(2)/2 P \
      sum x: N_62 dot 1/sqrt(2) + N_56 - P = 0 => \ => N_56 = P - sqrt(2)/2 P dot 1/sqrt(2) = P/2
    $
  ],
)
