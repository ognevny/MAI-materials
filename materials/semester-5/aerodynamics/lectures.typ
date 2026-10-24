#import "meta.typ": conf, const, grad
#import "@preview/physica:0.9.8": dd, dv, evaluated, mdet, pdv

#show: conf.with(
  title: "Лекции по Аэродинамике",
  description: "Лекции Попова С.А. по Аэродинамике",
  date: datetime(year: 2026, month: 09, day: 02),
  head: [Лекции по Аэродинамике],
)

#let Eu = math.op("Eu")
#let Fr = math.op("Fr")
#let Kn = math.op("Kn")
#let Nu = math.op("Nu")
#let Nw = math.op("Nw")
#let Re = math.op("Re")
#let Sh = math.op("Sh")
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
    dd(E) = C_V dd(T) => E = C_V T + const
  $
  Если взять $T = 0 => E = 0$, то
  $
    E = C_V T
  $
+ Энтальпия
  $
    dd(i) = C_p dd(T) => i = C_p T + const
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
    dd(S) = dd(q)/T \
    S = C_v ln p/rho^gamma + const
  $
  Если $S = const$, то $p/rho^gamma = const$

== Сжимаемость среды

#v(1em)

Коэффициент сжимаемости среды
$
  beta_p = dd(rho)/(rho dd(p)) = 1/(rho a^2),
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
    columns: (2.5fr, 1fr),
    column-gutter: 1em,
    [
      Метод Лагранжа
      Геометрическое место точек пребывания жидкой частица в различные моменты времени называется траекторией
      $
        arrow(r) = arrow(r) (t, underbrace(a\, b\, c, sscript("пер. Лагранжа"))) \
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
    columns: (2.5fr, 1fr),
    column-gutter: 1em,
    [
      Метод Эйлера -- в ней точка $M$ зафиксирована в момент времени $t$
      $
        arrow(v) = arrow(v) (t, underbrace(x\, y\, z, sscript("пер. Эйлера"))) \
        arrow(w) = pdv(arrow(v), t) + dv(x, t) pdv(arrow(v), x) + dv(y, t) pdv(arrow(v), y) + dv(z, t) pdv(arrow(v), z) \
        v_x = dv(x, t), space v_y = dv(y, t), space v_z = dv(z, t) => dv(arrow(v), t) = pdv(arrow(v), t) + v_x pdv(arrow(v), x) + v_y pdv(arrow(v), y) + v_z pdv(arrow(v), z) \
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
      dd(arrow(s)) times arrow(v) = 0 <=> dd(arrow(s)) times arrow(v) = mdet(arrow(i), arrow(j), arrow(k); dd(x), dd(y), dd(z); v_x, v_y, v_z) = 0 \
      dd(x)/v_x = dd(y)/v_y = dd(z)/v_z
    $
  ],
)

== Циркуляция скорости

#v(1em)

#grid(
  columns: (1fr, 2fr),
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
      Gamma = integral_1^2 arrow(v) dot dd(arrow(s)) = integral_1^2 v_x dd(x) + v_y dd(y) + v_z dd(z) \
      arrow(v) = arrow(i) v_x + arrow(j) v_y + arrow(k) v_z \
      dd(arrow(s)) = arrow(i) dd(x) + arrow(j) dd(y) + arrow(k) dd(z)
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
  arrow(gradient) times arrow(v) = mdet(arrow(i), arrow(i), arrow(j); pdv(, k), pdv(, y), pdv(, z); v_x, v_y, v_z)
$

$
  arrow(gradient) dot arrow(v) = "div" arrow(v) = pdv(v_x, x) + pdv(v_y, y) + pdv(v_z, z)
$

=== Потенциальное течение

#v(1em)

При потенциальном течении $arrow(omega) = 0$, тогда
$
  v_x dd(x) + v_y dd(y) + v_z dd(z) = dd(phi) = pdv(phi, x) dd(x) + pdv(phi, y) dd(y) + pdv(phi, z) dd(z),
$
тогда $v_x = pdv(phi, x)$, $v_y = pdv(phi, y)$, $v_z = pdv(phi, z)$

$phi = phi(t, x, y, z)$ -- некая функция
$
  Gamma = integral_1^2 arrow(v) dd(arrow(s)) = phi_2 - phi_1
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
      dd(arrow(s)) times arrow(omega) = 0 \
      dd(x)/omega_x = dd(y)/omega_y = dd(z)/omega_z
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
      Gamma = integral.cont arrow(v) dot dd(arrow(s)) = 2integral.double_S omega_n dd(sigma)
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
      arrow(v) = Gamma/(4pi) integral_(-oo)^(+oo) (dd(arrow(s)) times r)/r^3,
    $
    выведено из
    $
      arrow(v) = 1/(2pi) integral.triple_V (arrow(omega) times arrow(r))/r^3 dd(V),
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

= Основы динамики сплошной среды

== Уравнение переноса массы

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Используется Эйлеров подход.

    $
      M_t = rho Delta V,
    $
    где $Delta V = Delta x Delta y Delta z$

    Получим уравнение переноса массы
    $
      M_(t+Delta t) = M_t + evaluated(pdv(M, t))_t Delta t + 1/(2!) evaluated(pdv(M, t, 2))_t Delta t^2 + ... \
      Delta M_t = M_(t+Delta t) - M_t = evaluated(pdv(M, t))_t Delta t + ... = pdv(rho, t) Delta t Delta V + ...
    $
  ],
  [
    #figure(
      image("source-figures/lect4-1.png"),
    )
  ],
)

Жидкость втекает в объем
$
  & M_x = rho underbrace(v_x Delta t, Delta x) Delta y Delta z \
  & M_(x+Delta x) = M_x + evaluated(pdv(M, x))_x Delta x + ... \
  & Delta M_x = M_x - M_(x+Delta x) = -evaluated(pdv(M, x))_x Delta x + ... = -pdv((rho v_x), x) Delta t overbrace(Delta x Delta y Delta z, Delta V) \
  & Delta M_y = -pdv((rho v_y), y) Delta t Delta V + ... \
  & Delta M_z = -pdv((rho v_z), z) Delta t Delta V + ... \
  & Delta M_t = Delta M_x + Delta M_y + Delta M_z
$

Осуществим предельный переход $Delta t -> 0$ и $Delta V -> 0$
$
  pdv(rho, t) + underbrace(pdv((rho v_x), x) + pdv((rho, v_y), y) + pdv((rho v_z), z), "div"(rho arrow(v)) = arrow(gradient)(rho arrow(v))) = 0
$

При $rho = const$
$
  "div"(arrow(v)) = 0
$

== Уравнение переноса количества движения

#v(1em)

Аналог II законы Ньютона для сплошной среды

Количество движения
$
  arrow(Q)_t = rho arrow(v) Delta V \
  arrow(Q)_(t+Delta t) = arrow(Q)_t + evaluated(pdv(Q, t))_t Delta t + ...
$

Изменение количества движения
$
  Delta arrow(Q) = arrow(Q)_(t+Delta t) - arrow(Q)_t = evaluated(pdv(Q, t))_t Delta t + ... = pdv((rho arrow(v)), t) Delta t Delta V + ...
$

Факторы, влияющие на изменение импульса внутри объема:
+ Перенос импульса через границы объема
  $
    & arrow(Q)_x = rho arrow(v) underbrace(v_x Delta t, Delta x) Delta y Delta z + ... \
    & arrow(Q)_(x+Delta x) = arrow(Q)_x + evaluated(pdv(arrow(Q), x))_x Delta x + ... \
    & arrow(Q)_x = arrow(Q)_x - arrow(Q)_(x+Delta x) = -evaluated(pdv(arrow(Q), x))_x Delta x + ... = -pdv((rho arrow(v), v_x), x) Delta x + ... \
    & arrow(Q)_y = -pdv((rho arrow(v), v_y), y) Delta y + ... \
    & arrow(Q)_z = -pdv((rho arrow(v), v_z), z) Delta z + ...
  $
+ #grid(
    columns: (2fr, 1fr),
    column-gutter: 1em,
    [
      Импульс поверхностных сил

      Вводится напряжение на площадке
      $
        arrow(p)_n = lim_(Delta V -> 0) dv(arrow(p)_n, sigma, d: Delta) = arrow(p)_(n n) + arrow(p)_(n tau) \
        arrow(p)_n = arrow(p)_x cos(n\^x) + arrow(p)_y cos(n\^y) + arrow(p)_z cos(n\^z) \
        arrow(p)_x = arrow(i) p_(x x) + arrow(j) p_(x y) + arrow(k) p_(x z) \
        arrow(p)_y = arrow(i) p_(y x) + arrow(j) p_(y y) + arrow(k) p_(y z) \
        arrow(p)_z = arrow(i) p_(z x) + arrow(j) p_(z y) + arrow(k) p_(z z)
      $

      Тензор напряжения
      $
        Pi = mat(delim: "[", p_(x x), p_(x y), p_(x z); p_(y x), p_(y y), p_(z z); p_(z x), p_(z y), p_(z z))
      $

      Имеем $p_(y x) = p_(x y)$, $p_(z x) = p_(x z)$ и $p_(z y) = p_(y z)$

      Импульс сил
      $
        & arrow(P)_x = arrow(p)_x Delta y Delta z Delta t \
        & arrow(P)_(x+Delta x) = arrow(P)_x + evaluated(pdv(arrow(P)_x, x))_x Delta x + ... \
        & Delta arrow(P)_x = arrow(P)_(-x) + arrow(P)_(x+Delta x) = pdv(arrow(P)_x, x) Delta t Delta V + ... \
        & Delta arrow(P)_y = pdv(arrow(P)_y, y) Delta t Delta V + ... \
        & Delta arrow(P)_z = pdv(arrow(P)_z, z) Delta t Delta V + ...
      $
      ($arrow(P)_(-x) = -arrow(P)_x$)
    ],
    [
      #figure(
        image("source-figures/lect4-2.png"),
      )
    ],
  )
+ Импульс массовых сил
  $
    Delta arrow(F)_m = arrow(f) rho Delta V Delta t
  $

Итого
$
  Delta arrow(Q)_t = Delta arrow(Q)_x + Delta arrow(Q)_y + Delta arrow(Q)_z + Delta arrow(P)_x + Delta arrow(P)_y + Delta arrow(P)_z + Delta arrow(P)_t + Delta arrow(F)_m
$

Сократим на $Delta t Delta V$
$
  pdv((rho arrow(v)), t) + pdv((rho arrow(v) v_x), x) + pdv((rho arrow(v) v_y), y) + pdv((rho arrow(v) v_z), z) = pdv(arrow(p)_x, x) + pdv(arrow(p)_y, y) + pdv(arrow(p)_z, z) + rho arrow(f)
$

Отсюда имеем 4 уравнения (векторное плюс 3 скалярных), неизвестные $rho$, $v_x$, $v_y$, $v_z$ и 6 $p_(i j)$ -- 10 штук.

== Уравнение переноса энергии

#v(1em)

Вводится внутренняя энергия $e$ (на единицу объема).

Изменение полной энергии $e + v^2/2$ внутри объема происходит за счет изменения следующих факторов
+ Перенос энергии через грани объема
+ Работа поверхностных сил
+ Работа массовых сил
+ Поток тепла через границы объема

$
  rho pdv(, t) (e + v^2/2) + underbrace(rho arrow(v) arrow(gradient) (e + v^2/2), "1.") = underbrace(rho arrow(f) arrow(v), "3.") + underbrace(pdv((arrow(p_x) arrow(v)), x) + pdv((arrow(p_y) arrow(v)), y) + pdv((arrow(p_z) arrow(v)), z), "2.") - underbrace("div"arrow(q), "4.")
$

Теперь добавляется ещё 3 неизвестных $q_i$.

Давление
$
  p = -(p_(x x) + p_(y y) + p_(z z))/3 \
  p_(x y) = p_(y x) = 2mu epsilon_z = mu (pdv(v_x, y) + pdv(v_y, x)) \
  p_(y z) = p_(y z) = 2mu epsilon_x = mu (pdv(v_y, z) + pdv(v_z, y)) \
  p_(x z) = p_(z x) = 2mu epsilon_y = mu (pdv(v_x, z) + pdv(v_x, z)) \
  p_(x x) = -p + 2mu theta_x + lambda'"div"arrow(v) \
  p_(y y) = -p + 2mu theta_y + lambda'"div"arrow(v) \
  p_(z z) = -p + 2mu theta_z + lambda'"div"arrow(v)
$
где $lambda'$ -- коэффициент объемной вязкости

Уравнение Навье
$
  arrow(q) = -lambda arrow(gradient) T,
$
где $lambda$ -- коэффициент теплопроводности

Закон Стокса
$
  lambda' = -2/3 mu
$
работает только для одноатомных газов.

Для многоатомных газов
$
  lambda' = -2/3 mu + mu', \
  mu' = 2/3 dot (5 - 3gamma)/2 h mu, \
  mu/mu_0 = (T/T_0)^S, \
  h = z ((7 - 2S)(5 - 2S))/30, space z = 5,
$
где $S$ -- показатель степени температуры

== Начальные и граничные условия

#v(1em)

Начальные условия задаются для какого времени $t^n > t_0$. Граничные условия задается на граничных точках (внешнего потока, поверхности).

Например, условие непротекания
$
  arrow(v) arrow(n)_w = 0
$
и условие прилипания
$
  arrow(v)_w = 0
$

== Уравнение Бернулли

#v(1em)

$
  p + (rho v^2)/2 = p_0 = const,
$
где $rho = const$, отсюда $v S = const$

При непостоянной плотности
$
  integral dd(p)/rho + v^2/2 = const
$

= Основы теории аэродинамического подобия

#v(1em)

Наука при изучении самых разнообразных процессов природы широко использует метод моделирования, который заключает в изучении физически подобного явления на моделях другого масштаба. Основные особенности -- простота, дешевизна и возможность проведения широких параметрических исследований.

Два явления называются подобными, если во всех сходственных пространственно-временных точках во все сходственные моменты времени все однородные физические величины, описывающие явления, находятся в одинаковых отношениях. Например, точка $M(arrow(r), t)$ сходственна с $M_1(arrow(r)_1, t_1)$, $r_1 = r K_L$, $t_1 = t K_t$.

Различают следующие виды подобия
+ Геометрическое
  $
    K_L = L_1/L, space K_S = S_1/S, space K_V = V_1/V
  $
+ Кинематическое
  $
    K_t = t_1/t, space K_v = v_1/v, space K_w = w_1/w
  $
+ Динамическое
  $
    K_R = R_1/R, space K_rho = rho_1/rho, space K_mu = mu_1/mu
  $

== Коэффициенты аэродинамических сил и моментов

#v(1em)

$
  Delta arrow(R) = m arrow(W) epsilon -> Delta arrow(R)_1 = m_1 arrow(W)_1 epsilon \
  m = rho Delta V -> m_1 = rho_1 Delta V_1 \
  Delta arrow(R) = rho arrow(W) epsilon Delta V -> Delta arrow(R)_1 = rho_1 arrow(W)_1 epsilon Delta V_1
$

Посчитаем
$
  K_R = dv(R_1, R, d: Delta) = (rho_1 W_1 epsilon Delta V_1)/(rho W epsilon Delta V) = K_rho K_w K_L^3,
$
где $K_w = K_L K_t^(-2)$

Получим
$
  K_rho K_w K_L^3 = K_rho K_L^4 K_t^(-2) = K_rho K_L^2 K_v^2
$

Запишем отношение
$
  R_1/R = (rho_1 L_1^2 v_1^2)/(rho L^2 v^2)
$

Получим число Ньютона
$
  R/(rho L^2 v^2) = R_1/(rho_1 L_1^2 v_1^2) = Nw
$

Но в аэродинамике используется коэффициент динамической силы
$
  arrow(C)_R = 2Nw = arrow(R)/((rho v^2)/2 S) = arrow(R)/(q S),
$
где $S ~ l^2$, $q = (rho v^2)/2$

Отсюда
$
  C_x = X/(q S), space C_y = Y/(q S), space C_z = Z/(q S)
$

Например, $X_A = C_x_a q S = C_x_a q_1 S_1$

Также существует коэффициент
$
  arrow(C)_m = arrow(M)/(q S L)
$

Рассмотрим
$
  K_p = p_1/p = K_R K_L^(-2) = K_R K_L^(-2) (K_L^2 K_t^2)/(K_L^2 K_t^2) = K_R K_t^2 K_L^(-4) K_v^2 = K_rho K_v^2
$

Число Эйлера
$
  p/(rho v^2) = p_1/(rho_1 v_1^2) = Eu
$

Возьмем
$
  p ~ p - p_oo, space rho v^2 ~ (rho v^2)/2
$

Получим коэффициент давления
$
  C_p = (p - p_oo)/q
$

Запишем
$
  (Delta T)/(rho v^2 Delta S) = (Delta T_1)/(rho_1 v_1 Delta S_1)
$

Местный коэффициент трения
$
  C_f = lim_(Delta S -> 0) (Delta T)/(q Delta S)
$

== Критерии аэродинамического подобия

#v(1em)

Число Кнутцена
$
  Kn = lambda/L
$

В основу теория размерности лежит $pi$-теорема, из нее можно получить все основные критерии.

Новые уравнения
$
  (K_v K_t)/K_L pdv(rho_1, t_1) + "div"(rho_1 arrow(v)_1) = 0 \
  (K_v K_t)/K_L rho_1 pdv(v_1, t_1) + ... = K_v^2/(K_R K_L) rho_1 arrow(F)_1 - (K_rho K_v^2)/K_p arrow(nabla) p_1 + (K_rho K_L K_u)/K_mu \
  (K_v K_t)/K_L rho_1 pdv(v_1, t_1) + ... = - (K_rho K_epsilon)/K_p p_2 "div" arrow(v)_1 + (K_rho K_epsilon K_L)/(K_mu K_v) - (K_rho K_v K_epsilon)/K_q "div" arrow(q)_1
$

Критерий монохромности
$
  (K_v K_t)/K_t = 1 \
  (v t)/L = (v_1 t_1)/L_1 = H_0
$

Число Струхаля
$
  (v T)/L = Sh
$

Число Фруда
$
  v^2/(g L) = v_1^2/(g_1 L_1) = Fr
$

Число Маха
$
  v/a = v_1/a_1 = M
$

Число Рейнольдса
$
  (rho v L)/mu = (rho_1 v_1 L_1)/mu_1 = Re
$

Число Прандтля
$
  (mu C_p)/lambda = (mu_1 C_p_1)/lambda_1 = Pr
$

Число Нуссельта
$
  (alpha L)/lambda = (alpha_1 L_1)/lambda_1 = Nu
$

Соответственно полное подобие можно получить, обеспечив равенство чисел $Sh$, $Fr$, $M$, $Re$, $Pr$, $Nu$, $Kn$.

+ Вязкость и сжимаемость
  $
    (rho v L)/mu = (rho_1 v_1 L_1)/mu_1, space v/a = v_1/a_1
  $
+ Силы тяжести и вязкости
  $
    v^2/(g L) = v_1^2/(g_1 L_1), space (rho v L)/mu = (rho_1 v_1 L_1)/mu_1
  $

= Основы вычислительной гидродинамики

== Интегралы уравнений движения

#v(1em)

$
  dv(arrow(v), t) = -1/rho arrow(nabla) p + arrow(f) \
  dv(arrow(v), t) = pdv(arrow(v), t) + v_x pdv(arrow(v), x) + v_y pdv(arrow(v), y) + v_z pdv(arrow(v), z) \
  arrow(nabla) p = arrow(i) pdv(p, x) + arrow(j) pdv(p, y) + arrow(k) pdv(p, z) \
  arrow(f) = -arrow(nabla) V, space V = g y
$

Интеграл Лагранжа
$
  & rot arrow(v) = 0 => pdv(v_x, y) = pdv(v_y, x), space pdv(v_y, z) = pdv(v_z, y), space pdv(v_x, z) = pdv(v_z, x) \
  & arrow(v) = arrow(nabla) phi \
  & pdv(v_x, t) = pdv(, t) pdv(phi, x) = pdv(, x) pdv(phi, t) \
  & v_x pdv(v_x, x) = pdv(, x) v_x^2/2 \
  & v_y pdv(v_x, y) = v_y pdv(v_y, x) = pdv(, x) v_y^2/2 \
  & v_z pdv(v_x, z) = v_z pdv(v_z, x) = pdv(, x) v_z^2/2 \
  & pdv(, x) (pdv(phi, t) + v_x^2/2 + v_y^2/2 + v_z^2/2) = pdv(, x) (pdv(phi, t) + v^2/2) \
  & P = integral dd(p)/rho; space pdv(P, x) = 1/rho pdv(p, x) \
  & f_x = -pdv(V, x) \
  & pdv(, x) overbrace((pdv(phi, t) + v^2/2 + P - V), "интеграл Лагранжа") = 0 \
  & pdv(phi, t) + v^2/2 + P - V = const(t)
$

Интеграл Бернулли
$
  rot arrow(v) != 0 quad pdv(arrow(v), t) = 0 \
  v_x pdv(v_x, x) + v_y pdv(v_x, y) + v_z pdv(v_x, z) = pdv(, x) v_x^2/2 + pdv(, x) v_y^2/2 + v_y (pdv(v_x, y) - pdv(v_y, x)) + pdv(, x) v_z^2/2 - v_z (pdv(v_x, z) - pdv(v_z, x)) = \ = pdv(, x) v^2/2 + 2(v_z omega_y - v_y omega_z) \
  pdv(, x) (v^2 + P + V) = -2(arrow(omega) times arrow(v))_x |dot x dd(x) \
  pdv(, y) (v^2 + P + V) = -2(arrow(omega) times arrow(v))_y |dot x dd(y) \
  pdv(, z) (v^2 + P + V) = -2(arrow(omega) times arrow(v))_z |dot x dd(z) \
  dif(v^2/2 + P + V) = -2(arrow(omega) times arrow(v)) dd(arrow(S)), space dd(arrow(S)) = arrow(i) dd(x) + arrow(j) dd(y) + arrow(k) dd(z)
$

Отсюда выведем при $rho = const$
$
  P = integral dd(p)/rho = p/rho + const \
  v^2/2 + p/rho + g y = const \
  (rho v^2)/2 + p + cancel(rho g y) = const
$

Давление торможения
$
  (rho v^2)/2 + p = const = p_0
$

При $p/rho^gamma = const$
$
  integral dd(p)/rho = integral (gamma const rho^(gamma-1) dd(rho))/rho = gamma const rho^(gamma-1)/(gamma - 1) + const = gamma/(gamma - 1) p/rho^gamma rho^(gamma-1) + const = gamma/(gamma - 1) p/rho + const \
  p/rho = R T, space gamma/(gamma - 1) R = C_p, space C_p T = i \
  i + v^2/2 = const = i_0
$

= Одномерное изоэнотропическое течение газа

#v(1em)

$
  s = C_v ln p/rho^gamma = const => p/rho^gamma = const
$

Для сечения любой струйки в зоне нулевой скорости можно записать энтальпию торможения $i_0 = C_p T_0$
$
  gamma/(gamma - 1) R T_0 = gamma/(gamma - 1) R T + v^2/2,
$
где $T_0$ -- температура торможения.

Можем получить значение максимальной скорости из
$
  i -> 0 => i_0 = v_max^2/2 => v_max = sqrt(2i_0) = sqrt((2gamma)/(gamma - 1) R T_0)
$

При идеальных условиях $v_max = const$

Для наших условий можем записать
$
  i/i_0 = T/T_0 = 1 - v^2/(2i_0) = 1 - v^2/v_max^2 \
  p/p_0 = (1 - v^2/(2i_0))^(gamma/(gamma-1)), space rho/rho_0 = (1 - v^2/(2i_0))^(1/(gamma-1))
$

Скорость звука
$
  a_0^2 = gamma R T_0, space v_max^2 = (2gamma)/(gamma - 1) R T_0 => a^2 = (gamma - 1)/2 (v_max^2 - v^2)
$

Критическая скорость
$
  a_"кр"^2 = (gamma - 1)/(gamma + 1) v_max^2
$

Отсюда можем получить критические значения величин
$
  T_"кр"/T_0 = 1 - a_"кр"^2/v_max^2 => & T_"кр" = 2/(gamma + 1) T_0 \
                                       & rho_"кр" = (2/(gamma + 1))^(1/(gamma - 1)) rho_0 \
                                       & p_"кр" = (2/(gamma + 1))^(gamma/(gamma - 1)) p_0 \
$

В расчетах может использоваться приведенная скорость
$
  lambda = v/a_"кр"
$
