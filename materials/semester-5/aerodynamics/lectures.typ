#import "meta.typ": conf, const, grad
#import "@preview/physica:0.9.8": dv, pdv

#show: conf.with(
  title: "Лекции по Аэродинамике",
  description: "Лекции Попова С.А. по Аэродинамике",
  date: datetime(year: 2026, month: 09, day: 02),
  head: [Лекции по Аэродинамике],
)

#let Kn = math.op("Kn")
#let rot = math.op("rot")

#outline()
#pagebreak(weak: true)

= Системы координат, используемые в аэродинамике

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    + Связанная система координат
      $O x$ -- продольная ось, $O y$ -- нормальная ось, $O z$ -- поперечная ось

    + Скоростная система координат
      $O x_A$ -- скоростная ось, $O y_A$ -- ось подъемной силы, $O z_A$ -- боковая ось. $alpha$ -- угол атаки, $beta$ -- угол скольжения

    Пунктиром на рисунке обозначена проекция оси X на базовую плоскость.
  ],
  [
    #figure(
      image("source-figures/lect1-1.png"),
    )
  ],
)

#grid(
  columns: (1fr, 3fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect1-2.png"),
    )
  ],
  [
    $R_a$ -- полная аэродинамическая сила планера: $X = -X^*$ -- аэродинамическая продольная сила, $Y$ -- нормальная сила, $Z$ -- поперечная сила. $X_a = -X_a^*$ -- сила сопротивления, $Y_a$ -- подъемная сила, $Z_a$ -- боковая сила. $X_a > 0$.

    $M_a$ -- аэродинамический момент: $M_x$, $M_x_a$ -- момент крена, $M_y$, $M_y_a$ -- момент рысканья, $M_z$, $M_z_a$ -- момент тангажа.
  ],
)

== Понятие об установившимся и неустановившимся движении ЛА

#v(1em)

Для любой силы
$
  X_a = X_a (alpha, beta, delta_i, v, H, ..., dot(alpha), dot(beta), dot(delta)_i, dot(v), dot(H), ..., dot.double(alpha), dot.double(beta), dot.double(delta)_i, dot.double(v), dot.double(H), ...)
$

В квазистационарном решении опускаются все производные.

== Краткие исторические сведения

#v(1em)

По Ньютону
$
  X_a = C_x_a q_oo S,
$
где $q_oo$ -- скоростной напор
$
  q_oo = (rho V_oo^2)/2,
$
$C_x_a$ -- коэффициент сопротивления
$
  C_x_a = 2sin^2 alpha
$
Данное значение коэффициента сопротивления применимо только в отдельных случаях

Уравнение движения идеальной среды Эйлера
$
  dv(arrow(v), t) = -1/rho arrow(nabla) p
$

По Навье-Стоксу
$
  dv(arrow(v), t) = -1/rho arrow(nabla) p + arrow(f)_"вязк."
$

Уравнение Больцмана
$
  dv(f, t) = J
$

Про состояние, переходное между ламинарным и турбулентным течениями: "...Может решат, а может и не решат. Смотреть надо".

= Основные свойства газов и жидкостей

== Модель сплошной среды

#v(1em)

Гипотеза сплошности введена Даламбером и Эйлером. Также называется моделью континуума.

Рассмотрим стандартные условия: давление 101325 Па и температура 293 К, тогда в 1 кубическом сантиметре воздуха содержится $10^19$ молекул. Длина свободного пробега $l$ примерно $10^(-5)$ см.

Число Кнутцена
$
  Kn = l/L
$
При $Kn < 0.01$ работает модель сплошной среды.

Термодинамические параметры:
- Плотность
  $
    rho = lim_(Delta v -> 0) dv(m, v, d: Delta) ["кг"/м^3]
  $
- Давление
  $
    p = lim_(Delta S -> 0) dv(P, S, d: Delta) [Н/м^2 = "Па"]
  $
- Температура вводится из отношения
  $
    3/2 k T = (m overline(c)^2)/2 [К],
  $
  где $overline(c)^2$ средняя квадратичная тепловая скорость молекулы

== Функции состояния

#v(1em)

+ Внутренняя энергия
  $
    dif E = C_V dif T => E = C_V T + const
  $
  Если взять $T = 0 => E = 0$, то
  $
    E = C_V T
  $
+ Энтальпия
  $
    dif i = C_p dif T => i = C_p T + const
  $
  Аналогично получим
  $
    i = C_p T
  $
  Введем универсальную газовую постоянную
  $
    R = RR/M = C_p - C_V approx 287 "Дж"/("кг" dot К)
  $
  и
  $
    gamma = C_p/C_V,
  $
  тогда
  $
    C_V = 1/(gamma - 1) R, space C_p = gamma/(gamma - 1) R
  $
+ Энтропия
  $
    dif S = (dif q)/T \
    S = C_v ln p/rho^gamma + const
  $
  Если $S = const$, то $p/rho^gamma = const$

== Сжимаемость среды

#v(1em)

Коэффициент сжимаемости среды
$
  beta_p = (dif rho)/(rho dif p) = 1/(rho a^2),
$
где $a^2$ -- квадрат скорости звука
$
  a^2 = dv(p, rho)
$
В газе скорость звука 340 $м/с$, а в жидкости 1200 $м/с$

== Уравнение состояния

#v(1em)

$
  p = n k T = rho R T,
$
где $k$ -- удельная газовая постоянная
$
  k = m R
$

При $p/rho^gamma = const$ имеем
$
  a = sqrt(gamma p/rho) = sqrt(gamma R T)
$

При $T ~ 2000 К$ газы диссоциируются (двухатомные газы разваливаются на одноатомные), а при $T ~ 5000 К$ начинают ионизироваться (светиться)

== Вязкость

#v(1em)

Считаем, что $rho = const$.

Коэффициент динамической вязкости
$
  tau = mu dv(v_x, y) [Н/м^2],
$
где $mu$ -- коэффициент пропорциональности динамической вязкости ($(Н dot с)/м^2$), обычно порядка $10^(-5)$, для газов зависит от температуры ($mu = mu(T)$), а для жидкости $mu_ж = mu_ж (T, p)$

Формула Сатерленда
$
  mu/mu_0 = (T/T_0)^n
$
($0.5 < n < 1.5$ соответствует $T_2 > T_1$)

Коэффициент кинематической вязкости
$
  nu = mu/rho [м^2/с]
$
Для газов обычно того же порядка, что и $mu$

== Теплопроводность

#v(1em)

Закон теплопроводности Фурье
$
  arrow(q) = -lambda arrow(grad) T,
$
где $lambda$ -- коэффициент теплопроводности $["Вт"/(м dot К)]$

== Модели сплошных сред

#v(1em)

+ Модель идеальной и несжимаемой среды. Уравнение Лапласа
+ Модель идеальной среды. Уравнение Эйлера
+ Модель несжимаемой вязкой и теплопроводной среды. Уравнение Навье-Стокса ($rho = const$)
+ Модель сжимаемой вязкой и теплопроводной среды. Уравнение Навье-Стокса

= Основы кинематики сплошной среды

#v(1em)

Основная задача -- определение в каждый момент времени в каждой точке пространства скорости течения
$
  arrow(v) ~ p
$

+ #grid(
    columns: (2fr, 1fr),
    column-gutter: 1em,
    [
      Метод Лагранжа
      Геометрическое место точек пребывания жидкой частица в различные моменты времени называется траекторией
      $
        arrow(r) = arrow(r) (t, underbrace(a\, b\, c, "пер. Лагранжа")) \
        arrow(v) = dv(arrow(r), t), space arrow(w) = dv(arrow(v), t) = dv(arrow(r), t, 2) \
        v_x = pdv(x, t); space v_y = pdv(y, t); space v_z = pdv(z, t) \
        w_x = pdv(v_x, t) = pdv(x, t, 2); space w_y = pdv(v_y, t) = pdv(y, t, 2); space w_z = pdv(v_z, t) = pdv(z, t, 2)
      $
    ],
    [
      #figure(
        image("source-figures/lect3-1.png"),
      )
    ],
  )

+ #grid(
    columns: (1fr, 1fr),
    column-gutter: 1em,
    [
      Метод Эйлера -- в ней точка $M$ зафиксирована в момент времени $t$
      $
        arrow(v) = arrow(v) (t, underbrace(x\, y\, z, "пер. Эйлера")) \
        arrow(w) = pdv(arrow(v), t) + dv(x, t) pdv(arrow(v), x) + dv(y, t) pdv(arrow(v), y) + dv(z, t) pdv(arrow(v), z) \
        v_x = dv(x, t), space v_y = dv(y, t), space v_z = dv(z, t) \
        dv(arrow(v), t) = pdv(arrow(v), t) + v_x pdv(arrow(v), x) + v_y pdv(arrow(v), y) + v_z pdv(arrow(v), z) \
        x = x(t, a, b, c), space y = y(t, a, b, c), space z = z(t, a, b, c),
      $
      где $a$, $b$ и $c$ -- переменные Лагранжа
    ],
    [
      #figure(
        image("source-figures/lect3-2.png"),
      )
    ],
  )

== Принцип обращения движения

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [Слева неподвижная среда и подвижный объект; а справа неподвижный объект и подвижная среда],
  [
    #figure(
      image("source-figures/lect3-3.png"),
    )
  ],
)

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    #figure(
      (
        image("source-figures/lect3-4.png"),
        image("source-figures/lect3-5.png"),
      ).join(),
    )
  ],
  [
    Линия тока строится при фиксированном времени ($t = const$). При устремлении расстояния между точками к нулю имеем
    $
      dif arrow(s) times arrow(v) = 0 <=> dif arrow(s) times arrow(v) = mat(delim: "|", arrow(i), arrow(j), arrow(k); dif x, dif y, dif z; v_x, v_y, v_z) = 0 \
      (dif x)/v_x = (dif y)/v_y = (dif z)/v_z
    $
  ],
)

== Циркуляция скорости

#v(1em)

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect3-6.png"),
    )
  ],
  [
    $t = const$

    Циркуляция
    $
      Gamma = integral_1^2 arrow(v) dot dif arrow(s) = integral_1^2 v_x dif x + v_y dif y + v_z dif z \
      arrow(v) = arrow(i) v_x + arrow(j) v_y + arrow(k) v_z \
      dif arrow(s) = arrow(i) dif x + arrow(j) dif y + arrow(k) dif z
    $

    Вокруг всего контура
    $
      Gamma = integral.cont arrow(v) dot arrow(s)
    $
  ],
)

== Виды движения жидкой частицы

#v(1em)

#grid(
  columns: (3fr, 1fr),
  column-gutter: 1em,
  [
    $
      1: v_x, space 2: v_x + pdv(v_x, x) Delta x + ... \
      theta_x = pdv(v_x, x),
    $
    где $theta$ -- относительная скорость линейной деформации жидкой частицы, $Delta x -> 0$. Также определяется для остальных осей.
  ],
  [
    #figure(
      image("source-figures/lect3-7.png"),
    )
  ],
)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Пусть $Delta x = Delta y$

    Относительная скорость угловой деформации жидкой частицы
    $
      cases(
        epsilon_x = 1/2 (pdv(v_z, y) + pdv(v_y, z)),
        epsilon_y = 1/2 (pdv(v_x, z) + pdv(v_z, x)),
        epsilon_z = 1/2 (pdv(v_y, x) + pdv(v_x, y))
      )
    $
  ],
  [
    #figure(
      image("source-figures/lect3-8.png"),
    )
  ],
)

Относительная скорость углового вращения жидкой частицы (компоненты завихренности)
$
  cases(
    omega_x = 1/2 (pdv(v_z, y) - pdv(v_y, z)),
    omega_y = 1/2 (pdv(v_x, z) - pdv(v_z, x)),
    omega_z = 1/2 (pdv(v_y, x) - pdv(v_x, y))
  )
$

Ротор вектора скорости
$
  arrow(omega) = 1/2 rot arrow(theta) = 1/2 arrow(gradient) times arrow(v) \
  arrow(gradient) times arrow(v) = mat(delim: "|", arrow(i), arrow(i), arrow(j); pdv(, k), pdv(, y), pdv(, z); v_x, v_y, v_z)
$

$
  arrow(gradient) dot arrow(v) = "div" arrow(v) = pdv(v_x, x) + pdv(v_y, y) + pdv(v_z, z)
$

=== Потенциальное течение

#v(1em)

При потенциальном течении $arrow(omega) = 0$, тогда
$
  v_x dif x + v_y dif y + v_z dif z = dif phi = pdv(phi, x) dif x + pdv(phi, y) dif y + pdv(phi, z) dif z,
$
тогда $v_x = pdv(phi, x)$, $v_y = pdv(phi, y)$, $v_z = pdv(phi, z)$

$phi = phi(t, x, y, z)$ -- некая функция
$
  Gamma = integral_1^2 arrow(v) dif arrow(s) = phi_2 - phi_1
$

=== Вихревое движение

#v(1em)

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  [
    По сути является непотенциальным, строится вихревая линия

    Уравнение вихревой линии
    $
      dif arrow(s) times arrow(omega) = 0 \
      (dif x)/omega_x = (dif y)/omega_y = (dif z)/omega_z
    $

    Напряжение вихря
    $
      kappa = 2arrow(omega) dot sigma dot arrow(n),
    $
    где $sigma$ -- площадь, $arrow(n)$ -- вектор нормали
  ],
  [
    #figure(
      (
        image("source-figures/lect3-9.png"),
        image("source-figures/lect3-10.png"),
      ).join(),
    )
  ],
)

#grid(
  columns: (2.5fr, 1fr),
  column-gutter: 1em,
  [
    Теорема Стокса
    $
      Gamma = integral.cont arrow(v) dot dif arrow(s) = 2integral.double_S omega_n dif sigma
    $
  ],
  [
    #figure(
      image("source-figures/lect3-11.png"),
    )
  ],
)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Формула Био-Савара
    $
      arrow(v) = Gamma/(4pi) integral_(-oo)^(+oo) (dif arrow(s) times r)/r^3,
    $
    выведено из
    $
      arrow(v) = 1/(2pi) integral.triple_V (arrow(omega) times arrow(r))/r^3 dif V,
    $
    в дифференциальной форме
    $
      cases(
        rot arrow(v) = 1/2 arrow(v),
        "div" arrow(v) = 0
      )
    $
  ],
  [
    #figure(
      image("source-figures/lect3-12.png"),
    )
  ],
)
