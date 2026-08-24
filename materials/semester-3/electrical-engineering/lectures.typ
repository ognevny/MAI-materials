#import "meta.typ": arctg, conf, un
#import "@preview/physica:0.9.8": dv, evaluated

#show: conf.with(
  title: "Лекции по Общей электротехнике и электронике",
  description: "Конспект лекций Кириллова В.Ю. по Общей электротехнике и электронике",
  date: datetime(year: 2026, month: 6, day: 28),
  head: [Лекции по Общей электротехнике и электронике],
)

#outline()
#pagebreak(weak: true)

= Основные определения

#v(1em)

Электрическая цепь -- совокупность устройств, часть из них -- источники электрического тока, оставшаяся -- приёмники электрического тока. Они соединены с помощью проводников.

ЭДС (электро-движущая сила) -- $E$, $e$ [В]

Напряжение -- $U$, $u$ [В]

Ток -- $I$, $i$ [А]

Сопротивление -- $R$, $r$ [Ом]

Электрическая проводимость -- $G$, $g$ [См] (Сименс)

Электрический заряд -- $Q$, $q$ [Кл]

#table(
  columns: 5,
  table.cell(colspan: 4)[Элемент], [Активные элементы],
  [Реальный], [резистор], [конденсатор], [катушка индуктивности], [генераторы ЭДС (или тока)],
  [Идеальный], [сопротивление], [ёмкость], [индуктивность], [источники ЭДС (или тока)],
)

Идеальные элементы составляют электрическую цепь.

Положительное направление тока: сила тока ($i$) и напряжение ($u$) направлены в одну сторону.

Величина силы электрического тока определяется из предела соотношения $Delta Q$ на $Delta t$ при $Delta t -> 0$, или же производной электрического заряда по времени.

Электрическая цепь состоит из ветвей, узлов и контуров (геометрические элементы)

#grid(
  columns: (3fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect1-2-1.png"),
    )
  ],
  [
    1, 2, 3 -- узлы
  ],
)

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1em,
  [
    Идеальный и реальные источники ЭДС и тока
  ],
  [
    #figure(
      image("source-figures/lect1-2-2.png"),
    )
  ],
)

Электрическая проводимость определяется как
$
  G = 1/R.
$
Например, при сопротивлении резистора 1 Ом проводимость составит 1 См, при сопротивлении 100 Ом -- 0.01 См.

== Сопротивление

#v(1em)

#grid(
  columns: (4fr, 1fr),
  column-gutter: 1em,
  [
    Элемент, способный преобразовать электрическую энергию в тепловую.

    Для первого случая
    $
      I = U/R
    $

    Для второго случая
    $
      U_0 = U_R - E = I R - E
    $

    Для замкнутой схемы
    $
      I = E/(R + r)
    $

    При отсутствии сопротивления имеем короткое замыкание, при этом внутреннее сопротивление $r$ обычно сильно меньше $R$.
  ],
  [
    #figure(
      (
        image("source-figures/lect1-2-3.1.png"),
        image("source-figures/lect1-2-3.2.png"),
        image("source-figures/lect1-2-3.3.png"),
      ).join(),
    )
  ],
)

=== 1 Закон Кирхгофа

#v(1em)

#grid(
  columns: (4fr, 1fr),
  column-gutter: 1em,
  [
    Алгебраическая сумма электрических токов в узле электрической цепи равна 0. За положительный принято считать тот ток, что входит в узел.

    $
      sum_(k=1)^(n+m) I_k = 0
    $

    Количество уравнений для этого закона должно быть на 1 меньше, чем узлов.
  ],
  [
    #figure(
      image("source-figures/lect1-2-4.png"),
    )
  ],
)

=== 2 Закон Кирхгофа

#v(1em)

Алгебраическая сумма ЭДС в контуре электрической цепи равна алгебраической сумме напряжений на ветвях (элементах), принадлежащих этому контуру
$
  sum_(k=1)^n E_k = sum_(i=1)^m U_i => sum (E - U) = 0
$

#grid(
  columns: (1.5fr, 1fr, 1fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/lect1-2-5.1.png"),
    )
  ],
  [
    $
      & I_1 + I_2 - I_5 = 0 \
      & E_1 = I_1 R_1 + I_1 R_3 + I_5 R_5 \
      & E_2 = I_2 R_2 + I_2 R_4 + I_5 R_5
    $
  ],
  [
    #figure(
      image("source-figures/lect1-2-5.2.png"),
    )
  ],
  [
    $
      & E_1 - E_2 = \
      & = I_1 R_1 + I_2 R_2 + I_3 R_3 = \
      & = I (R_1 + R_2 + R_3)
    $
  ],
)

Количество уравнений для этого закона определяется формулой
$
  m = p - q + 1,
$
где $p$ -- количество ветвей, $q$ -- количество узлов.

=== Последовательное соединение

#v(1em)

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  align: horizon,
  [
    $
      & R_э = R_1 + R_2 + ... + R_n \
      & U = U_1 + U_2 + ... + U_n = \
      & = I R_1 + I R_2 + ... + I R_n = \
      & = I (R_1 + R_2 + ... + R_n) = I R_э
    $
  ],
  [
    #figure(
      image("source-figures/lect1-2-6.png"),
    )
  ],
)

=== Параллельное соединение

#v(1em)

#grid(
  columns: (2.5fr, 1fr),
  column-gutter: 1em,
  [
    $
      G = 1/R \
      I = G_1 U + G_2 U + ... + G_n U = U (G_1 + G_2 + ... + G_n) = U G_э \
      G_э = G_1 + G_2 + ... + G_n = 1/R_1 + 1/R_2 + ... + 1/R_n => \ => R_э = 1/(1/R_1 + 1/R_2 + ... + 1/R_n)
    $

    При соединении как на нижнем рисунке имеем
    $
      R_э = R_1 + (R_2 R_3)/(R_2 + R_3)
    $
  ],
  [
    #figure(
      image("source-figures/lect1-2-7.png"),
    )
  ],
)

== Условие эквивалентности источников ЭДС и тока

#v(1em)

#grid(
  columns: (1fr, 1fr, 1fr),
  column-gutter: 10em,
  align: center + horizon,
  [
    #figure(
      image("source-figures/lect1-2-8.1.png"),
    )
    $U = E - I_1 R$
  ],
  [
    #figure(
      image("source-figures/lect1-2-8.2.png"),
    )
    $U = (I - I_1) R$
  ],
  [
    $
      E = I R => I = E/R
    $
  ],
)

=== Метод узловых напряжений

#v(1em)

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  [
    Для каждого $k$ из $1...n$ верно
    $
      U_12 = E_k - I_k R_k => I_k = (E_k - U_12)/R_k
    $

    Ввиду замкнутости цепи
    $
      sum_(k=1)^n I_k = sum_(k=1)^n (E_k - U_12)/R_k = 0 => U_12 = (sum_(k=1)^n E_k/R_k)/(sum_(k=1)^n 1/R_k)
    $
  ],
  [
    #figure(
      image("source-figures/lect1-2-9.1.png"),
    )
  ],
)

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  [
    $
      I_11 = I_1 + I_3, space I_1 = (U_1 - U_3) G_1, space I_3 = (U_1 - U_2) G_3
    $

    Пусть $U_3 = 0$, тогда $I_1 = U_1 G_1 => I_11 = G_1 U_1 + G_3 (U_1 - U_2)$

    $
      cases(
        I_11 = (G_1 + G_3) U_1 - G_3 U_2,
        I_22 = -G_3 U_1 + (G_2 + G_3) U_2,
      )
    $
  ],
  [
    #figure(
      image("source-figures/lect1-2-9.2.png"),
    )
  ],
)

В общем случае при $q$ узлов имеем $n = q - 1$ уравнений
$
  cases(
    I_11 = G_11 U_1 + G_12 U_2 + ... + G_(1 q-1) U_(q-1),
    I_22 = G_21 U_1 + G_22 U_2 + ... + G_(2 q-1) U_(q-1),
    ...,
    I_(q-1 q-1) = G_(q-1 1) U_1 + G_(q-1 2) U_2 + ... + G_(q-1 q-1) U_(q-1)
  )
$
В системе главная диагональ представляет собой собственную проводимость узлов.

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    $
      & I_(k k) = I_k_1 + I_k_2 - I_k_3 \
      & G_(l l) = G_l_1 + G_l_2 + G_l_3
    $
  ],
  [
    #figure(
      image("source-figures/lect1-2-10.png"),
    )
  ],
)

= Теорема компенсации

#v(1em)

Пассивный элемент можно заменить активным

#grid(
  columns: (1.5fr, 1fr, 2fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/lect3-1.1.png"),
    )
  ],
  [
    $
      U_1 = I R_1 \
      U_2 = I R_2
    $
  ],
  [
    #figure(
      image("source-figures/lect3-1.2.png"),
    )
  ],
)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    На @дрзамена приведена немного иная схема, контур a-b так же может быть заменен активным элементом
  ],
  [
    #figure(
      image("source-figures/lect3-fig2.png"),
      caption: [],
    ) <дрзамена>
  ],
)

= Теорема обратимости (взаимности)

#v(1em)

#grid(
  columns: (2fr, 1fr),
  [
    Участвуют пассивные электрические цепи с идеальными источниками ЭДС.

    Передаточная проводимость $G$ -- отношение тока на выходе к величине ЭДС на входе электрической цепи.

    $
      & I_k = Delta_(i k)/Delta_R dot E_i \
      & G_(k i) = I_k/E_i = Delta_(i k)/Delta_R \
      & G_(i k) = I_i/E_k = Delta_(k i)/Delta_R \
      & Delta_(k i) = Delta_(i k) => G_(k i) = G_(i k) => I_k/E_i = I_i/E_k => I_k/I_i = E_i/E_k \
      & E_i = E_k <=> I_i = I_k
    $
  ],
  [
    #figure(
      (
        image("source-figures/lect3-3.1.png"),
        image("source-figures/lect3-3.2.png"),
      ).join(),
    )
  ],
)

= Метод эквивалентного источника напряжения

#v(1em)

Теорема об эквивалентном источнике напряжения -- электрическую цепь относительно выделенных выводов можно заменить эквивалентным источником напряжения, величина ЭДС которого равняется напряжению на разомкнутых выводах, а внутреннее сопротивление источника -- эквивалентному сопротивлению относительно разомкнутых выводов.

#grid(
  columns: (2.5fr, 1fr, 1.5fr, 1.5fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/lect3-4.1.png"),
    )
  ],
  [
    $
      I = E_0/(R_0 + R_(m n))
    $
  ],
  [
    #figure(
      image("source-figures/lect3-4.2.png"),
    )
  ],
  [
    $E = U_(m n) = U_"хх"$ -- напряжение холостого хода
  ],
)

#grid(
  columns: (1.5fr, 2fr, 1fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/lect3-4.3.png"),
    )
  ],
  [
    $
      R_0 = R'_(m n),
    $
    где $R'_(m n)$ -- сопротивление цепи относительно разомкнутых элементов
  ],
  [
    #figure(
      image("source-figures/lect3-4.4.png"),
    )
  ],
  [
    $
      R_0 = E_0/I_"кз" = U_"хх"/I_"кз"
    $
  ],
)

Пример использования метода

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/lect3-5.1.png"),
    )
  ],
  [
    $
      E_(m n) = U_(m n)
    $
  ],
)

#figure(
  grid(
    columns: (3.5fr, 1fr),
    column-gutter: 1em,
    align: horizon,
    [#image("source-figures/lect3-5.2.png")], [#image("source-figures/lect3-5.3.png")],
  ),
)

= Переменный ток

#v(1em)

Частота $f$ [Гц], период $T = 1/f$ [с].

В большинстве случаев переменный ток изменяется по закону, близкому к синусоидальному.

Сила тока
$
  i = I_m sin(omega t + psi_i),
$
где $I_m$ -- амплитудная сила тока; $omega = 2pi f$ [$с^(-1)$] -- частота; $psi_i$ -- начальная фаза; $(omega t + psi_i)$ -- фаза

Напряжение
$
  u = U_m sin(omega t + psi_u)
$

Среднее значение синусоидального тока считается как

$
  I_"ср" = 2/T integral_0^(T/2) i(t) dif t stretch(=)^(psi_i=0) 2/T integral_0^(T/2) I_m sin omega t dif t = -(2I_m)/(omega T) evaluated(cos omega t)_0^(T/2) = 2/pi I_m approx 0.637I_m
$

Было подставлено $omega = (2pi)/T$

Средняя квадратическая синусоидального тока

$
  I^2 = 1/T integral_0^T i^2 (t) dif t = 1/T integral_0^T I_m^2 sin^2 omega t dif t = I_m^2/T integral_0^T (1 - cos 2omega t)/2 dif t = I_m^2/(2T) integral_0^T dif t = I_m^2/2,
$

Отсюда имеем соответственно действующие значения силы тока и напряжения
$
  I = I_m^2/sqrt(2), space U = U_m^2/sqrt(2)
$

#grid(
  columns: (4fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    Действующие значения являются неким эквивалентом значениям при постоянном токе
    $
      Q = integral_0^T i^2 R dif t = R integral_0^T i^2 (t) dif t = I^2 R T
    $
  ],
  [
    #figure(
      image("source-figures/lect3-8.png"),
    )
  ],
)

== Синусоидальный ток в сопротивлениях

#v(1em)

#grid(
  columns: (1fr, 1.8fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect4-1.1.png"),
    )
    $
      & i = I_m sin (omega t + psi_i), space omega = 2pi f^(-1) \
      & i = U/R sin (omega t + psi_u) \
      & I_m = U_m/R, psi_i = psi_u
    $
  ],
  [
    #figure(
      image("source-figures/lect4-1.2.png"),
    )
  ],
)

=== Мощность

#v(1em)

Мгновенная мощность
$
  p = u i = U_m I_m sin^2 (omega t + psi) = (U_m I_m)/2 (1 - cos(2omega t - psi))
$

Средняя мощность
$
  P = 1/T integral_0^T p dif t = U I space ["Вт"], space P = I^2 R = U^2 G, space G = 1/R
$

== Индуктивность

#v(1em)

Идеальный элемент электрической цепи, способный преобразовывать электрическую энергию в энергию магнитного поля.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    Количественная величина $L$ реального элемента -- катушки индуктивности
    $
      L = Psi/i, space L = Phi/i space ["Гн"]
    $
    где $Psi = Phi N$ -- потокосцепление, $Phi = L i$ -- магнитный поток, $N$ -- количество витков,

    По закону Фарадея
    $
      e = -dv(Phi, t)
    $

    Формула закона Ленца
    $
      e = -L dv(i, t) = \ = omega L I_m cos(omega t + psi_i) stretch(=)^(psi_i=0) -omega L I_m sin(omega t + pi/2) = \ = -omega L I_m sin(omega t + psi_i + pi/2)
    $
  ],
  [
    #figure(
      (
        grid(
          columns: (1.5fr, 1fr),
          column-gutter: 1em,
          [#image("source-figures/lect4-3.1.png")], [#image("source-figures/lect4-3.2.png")],
        ),
        image("source-figures/lect4-4.png"),
      ).join(),
    )
  ],
)

Напряжение на индуктивности
$
  u = -e = omega L I_m cos(omega t + psi_i) = omega L I_m sin(omega t + psi_i + pi/2), \
  U_m = omega L I_m = X_L I_m => u = X_L I_m sin(omega t + psi_u),
$
где $X_L = omega L$ -- индуктивное сопротивление, $psi_u = psi_i + pi/2$.

Индуктивная проводимость
$
  B_L = 1/X_L space ["См"] \
  I_m = B_L U_m, space I = B_L U
$

Мгновенная мощность
$
  p = u i = U_m I_m cos(omega t + psi_i) sin(omega t + psi_i) = (U_m I_m)/2 sin(2(omega t + psi_i)) = U I sin(2(omega t + psi_i))
$

Средняя мощность равна 0.

Энергия
$
  W_L = (L i^2)/2 = (L I_m^2)/2 sin^2(omega t + psi_i) = (L I_m^2)/4 [1 - cos(2(omega t + psi_i))]
$

Отсюда максимальное значение $W_m = (L I_m^2)/2$, действующее значение $W = (L I_m^2)/4 = (L I)/2$

== Электрическая ёмкость

#v(1em)

Идеальный элемент электрической цепи, способный накапливать энергию электрического поля. Реальный элемент -- конденсатор.

=== Синусоидальный ток в ёмкости

#v(1em)

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    Величина ёмкости
    $
      C = Q/U space [Ф], space i = C dv(u_c, t), \
      u_c = U_m sin(omega t + psi_u),
    $
    где $Q$ -- заряд конденсатора

    $
      i & = C dv(, t) (U_m sin(omega t + psi_u)) = \
        & = omega C U_m cos(omega t + psi_u) = \
        & = U_m/(1/(omega C)) sin(omega t + psi_u + pi/2) = \
        & = U_m/X_C cos(omega t + psi_i),
    $
    где $X_C = 1/(omega C)$ -- емкостное сопротивление

    $
      i = I_m sin(omega t + psi_i), space I_m = U_m/X_C, space psi_i = psi_u + pi/2
    $

    Разность фаз $phi_u - phi_i = -pi/2$
  ],
  [
    #figure(
      (
        image("source-figures/lect4-5.1.png", width: 30%),
        image("source-figures/lect4-5.2.png"),
      ).join(),
    )
  ],
)

Мгновенная мощность
$
  p = u i = U_m I_m sin(omega t + psi_u) cos(omega t + psi_u) = U I sin(2(omega t + psi_u))
$

Средняя мощность равна 0.

Энергия
$
  W_C = (C U^2)/2 = (C U_m^2)/2 sin^2 (omega t + psi_u) = (C U^2)/2 [1 - cos(2(omega t + psi_u))]
$

== Синусоидальный ток в ветви при последовательном соединении элементов RLC

#v(1em)

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  [
    $
      & u = u_R + u_L + u_C = i R + L dv(i, t) + 1/C integral i dif t \
      & i = I_m sin(omega t + psi_i); space psi_i = 0 \
      & u_R = R I_m sin omega t, space u_L = omega L I_m cos omega t, space u_C = -1/(omega C) I_m cos omega t
    $
  ],
  [
    #figure(
      image("source-figures/lect4-6.png"),
    )
  ],
)

$
  u & = U_m sin(omega t + phi) = I_m [R sin omega t + omega L cos omega t - 1/(omega C) cos omega t] = I_m [R sin omega t + (omega L - 1/(omega C)) cos omega t] = \ & = I_m [R sin omega t + X cos omega t] = I_m sqrt(R^2 + X^2) sin(omega t) = I_m Z sin(omega t + phi)
$

Реактивное сопротивление
$
  X = X_L - X_C
$

Полное сопротивление (импеданс)
$
  Z = sqrt(R^2 + X^2) \
  U_m = I_m Z, space U = I Z
$

Компоненты полного сопротивления, соответственно активный и реактивный
$
  R = Z cos phi, space X = Z sin phi
$

Отсюда имеем активное и реактивное значение напряжения
$
  U_а = R I = Z I cos phi = U cos phi, space U_р = X I = Z I sin phi = U sin phi
$

Построим графики значений $u$ и $i$
$
  u = U_m sin(omega t + phi_u) \
  i = I_m sin(omega t + phi_u - phi) \
  phi = phi_u - phi_i
$

#figure(
  image("source-figures/lect5-1.png"),
)

== Параллельное соединение элементов RLC

#v(1em)

#grid(
  columns: (1fr, 2.5fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect5-2.png"),
    )
  ],
  [
    $
      i = i_R + i_L + i_C \
      i_R = U_m/R sin omega t, space i_L = 1/L integral u dif t = 1/(omega L) U_m cos omega t, space i_C = C dv(u, t) = omega C cos omega t
    $
  ],
)

$
  i & = I_m sin(omega t - phi) = U_m/R sin omega t - 1/(omega L) U_m cos omega t + omega C U_m cos omega t = U_m [1/R sin omega t - (1/(omega L) - omega C) cos omega t] = \ & = U_m [G sin omega t - (B_L - B_C) cos omega t] = U_m [G sin omega t - B cos omega t] = U_m Y sin(omega t - phi),
$
где $phi = arctg B/G$

Реактивная проводимость
$
  B = B_L - B_C
$

Полная проводимость
$
  Y = sqrt(G^2 + B^2) \
  I_m = Y U_m, space I = Y U
$

Когда цепь имеет индуктивный характер, напряжение опережает ток. Когда ток опережает напряжение, то цепь имеет ёмкостной характер.

$
  u = U_m sin(omega t + phi_u) \
  i = I_m sin(omega t + phi_u - phi) \
  phi_i = phi_u - phi
$

== Мощность в цепи синусоидального тока

#v(1em)

Мгновенная мощность
$
  p = u i = U_m I_m sin(omega t) sin(omega t - phi) = (U_m I_m)/2 (cos phi - cos(2omega t - phi))
$

Активная мощность
$
  P = 1/T integral_0^T p(t) dif t = (U_m I_m)/2 cos phi = U I cos phi space ["Вт"]
$

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    Полная мощность
    $
      S = U I space [В dot А], \
      P = S cos phi => cos phi = P/S,
    $
    где $cos phi$ -- коэффициент мощности

    Реактивная мощность
    $
      Q = S sin phi
    $

    Имеем
    $
      S = sqrt(P^2 + Q^2)
    $
  ],
  [
    #figure(
      image("source-figures/lect5-3.png"),
    )
  ],
)

$
  & P = U I cos phi = Z I^2 cos phi = R I^2 \
  & P = Y U^2 cos phi = G U^2 \
  & Q = U I sin phi = Z I^2 sin phi = X I^2 \
  & Q = Y U^2 sin phi = B U^2
$

= Комплексный метод расчета электрической цепи

#v(1em)

#grid(
  columns: (7.5fr, 1fr),
  [
    Рассмотрим теорию комплексных чисел, используемых в методах расчета электрической цепи.

    $
      un(c) = alpha +- i beta = abs(un(c)) e^(+-j gamma),
    $
    где $j = sqrt(-1)$ -- мнимая единица, $gamma = arctg beta/alpha$, $abs(un(c)) = c = sqrt(alpha^2 + beta^2)$ -- модуль, $alpha = c cos gamma$, $beta = c sin gamma$
  ],
  [
    #figure(
      image("source-figures/lect6-1.1.png"),
    )
  ],
)

Запишем комплексные напряжение и силу тока
$
  & u = U_m sin(omega t + psi_u), space psi_u = 0 \
  & i = I_m sin(omega t + psi_u - phi), space phi = psi_u - psi_i
$
Здесь имеем
$
  & i = i(t) = I_m [I_m e^(j omega t)] \
  & I_m = I_m e^(j psi_i) = un(I_m) e^(j (psi_u - phi))
$

Запишем

$display(
  i = I_m sin(omega t + psi_u - phi) = I_m [un(I_m) e^(j omega t)] = I_m [I_m e^(j (psi_u - phi)) e^(j omega t)] = I_m [I_m e^(j (omega t + psi_u - phi))] = I_m sin(omega t + psi_u - phi)
)$

Воспользуемся комплексным методом для расчета последовательной RLC-цепи

$
  u = u_R + u_L + u_C = i R + L dv(i, t) + 1/C integral i dif t
$

$display(
  I_m [un(U_m) e^(j omega t)] = I_m [U_m e^(j psi_u) e^(j omega t)] = I_m [U_m e^(j (omega t + psi_u))] = U_m sin(omega t + psi_u) \
  I_m [un(U_m) e^(j omega t)] = I_m [I_m e^(j omega t)] R + L dv(, t) I_m [un(I_m) e^(j omega t)] + 1/C integral I_m [un(I_m) e^(j omega t)] = I_m [un(I_m) e^(j omega t) R + j omega L un(I_m) e^(j omega t) - j 1/(omega C) un(I_m) e^(j omega t)] \
  un(U_m) cancel(e^(j omega t)) = un(I_m) cancel(e^(j omega t)) R + j omega L un(I_m) cancel(e^(j omega t)) - j 1/(omega C) un(I_m) cancel(e^(j omega t)) \
  un(U_m) = un(I_m) R + j omega L un(I_m) - j 1/(omega C) un(I_m) = un(I_m) (R + j (omega L - 1/(omega C))) = un(I_m) (R + j X) = un(I_m) un(Z)
)$

Импеданс (полное комплексное сопротивление)
$
  un(Z) = R + j X = abs(un(Z)) e^(j phi),
$
где $phi = arctg X/R$, $abs(un(Z)) = Z = sqrt(R^2 + X^2)$

Распишем комплексные амплитудные значения напряжения и тока
$
  & un(U_m) = U_m e^(j psi_u) = U_m cos psi_u + j U_m sin psi_u \
  & un(I_m) = I_m e^(j (psi_u - phi)) = I_m cos(psi_u - phi) + j I_m sin(psi_u - phi)
$

Комплексные действующие значения
$
  un(U) = un(U_m)/sqrt(2) \
  un(I) = un(I_m)/sqrt(2)
$

$display(i(t) = I_m sin(omega t + psi_i) arrows.rl un(I_m) = I_m e^(j psi_i) = I_m cos psi_i + j I_m sin psi_i)$

#grid(
  columns: (1fr, 1.5fr, 4fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect6-1.2.png"),
    )
  ],
  [
    #figure(
      image("source-figures/lect6-1.3.png"),
    )
  ],
  [
    Рассмотрим пример схемы
    $
      un(U) = 10e^(j 60degree) arrows.rl u = 10sqrt(2) sin(omega t + 60degree) \
      un(Z) = 5e^(j 30 degree) = 5cos 30degree + j 5sin 30degree \
      un(I) = un(U)/un(Z) = (10e^(j 60degree))/(5e^(j 30degree)) = 2e^(j 30degree) -> i = 2sqrt(2) sin(omega t + 30degree)
    $
  ],
)

Воспользуемся комплексным методом для расчета параллельной RLC-цепи
$
  un(I) = un(I_R) + un(I_L) + un(I_C) = U/R - j un(U)/(omega L) + j omega C un(U) = un(U) (1/R - j (1/(omega L) - omega C)) = un(U) (G - j (B_L - B_C)) = un(U) (G - j B) = un(U) un(Y),
$
Полная комплексная проводимость
$
  un(Y) = G - j B = abs(un(Y)) e^(-j phi),
$
где $phi = arctg B/G$, $abs(un(Y)) = Y = sqrt(G^2 + B^2)$

$
  un(I) = un(Y) un(U) e^(j (psi_u - phi)) -> i(t) = Y U sqrt(2) sin(omega t + psi_u - phi)
$

Законы Кирхгофа для комплексных значений работают полностью аналогично. Запишем второй закон Кирхгофа в комплексной форме на примере одной из цепей.

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/lect6-2.png"),
    )
  ],
  [
    $
      un(E_1) - un(E_2) + un(E_3) = un(I_1) (R_1 + j omega L_1) + un(I_4) (R_4 - j X_L_4) + \ + un(I_2) R_2 - un(I_3) j omega L_3 - un(I_5) (R_5 + j omega L_5 - j 1/(omega C_5))
    $
  ],
)

== Комплексная мощность

#v(1em)

Мощность обозначается как $S$, физическая единица - Ва (Вольт-Ампер). Запишем комплексную мощность
$
  un(S) = un(U) limits(un(I))^*,
$
где $limits(un(I))^*$ -- сопряженная сила тока.

Сопряженным к $un(r) = alpha +- beta i = abs(un(r)) e^(+-j psi)$ есть число $limits(un(r))^* = alpha -+ beta i = abs(un(r)) e^(-+j psi)$.

$display(
  un(I) = abs(un(I)) e^(j psi_i) => limits(un(I))^* = abs(un(I)) e^(-j psi_i) => un(S) = U e^(j psi_u) dot I e^(-j psi_i) = U I e^(j (psi_u - psi_i)) = U I e^(j phi) \
  S = U I\, space un(S) = S e^(j phi) = S cos phi + j S sin phi \
  un(S) = P + j Q\, space S = sqrt(P^2 + Q^2) \
  un(U) = un(Z) un(I)\, space un(S) = un(Z) un(I) limits(un(I))^* = un(Z) I^2 => S = Z I^2
)$

В формулах фигурируют активная мощность $P = S cos phi$ [Вт] и реактивная мощность $Q = S sin phi$ [Вар] (Вольт-Ампер реактивный).

= Трехфазные электрические цепи

#v(1em)

#figure(
  image("source-figures/lect7-2.png"),
)

$
  e_a = E_m sin(omega t); space e_b = E_m sin(omega t - 120degree); space e_a = E_m sin(omega t + 120degree)
$

#figure(
  image("source-figures/lect7-3.png"),
)

== Включение звездой

#v(1em)

Линейные токи - токи между линиями генератора и нагрузки. Фазные токи - токи, протекающие в лучах нагрузки звезды

#grid(
  columns: (3fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect7-4.png"),
    )
  ],
  [
    Фазные токи
    $
      & un(U)_(Ф A) = un(I)_(Ф A) dot un(Z)_A \
      & un(U)_(Ф B) = un(I)_(Ф B) dot un(Z)_B \
      & un(U)_(Ф C) = un(I)_(Ф C) dot un(Z)_C
    $

    Линейные токи
    $
      & un(I)_Л = un(I)_Ф \
      & un(U)_Л_(A C) = un(U)_(Ф A) - un(U)_(Ф C) \
      & un(U)_Л_(A B) = un(U)_(Ф A) - un(U)_(Ф B) \
      & un(U)_Л_(B C) = un(U)_(Ф B) - un(U)_(Ф C)
    $
  ],
)

== Фазные и линейные токи и напряжения

#v(1em)

#figure(
  image("source-figures/lect8-1.png"),
)

(направление $U_(C A)$ относится к обоим рисункам)

$N$ -- нейтральная точка; $un(U)_(A B)$, $un(U)_(B C)$, $un(U)_(C A)$ -- линейные напряжения; $un(U)_A$, $un(U)_B$, $un(U)_C$ -- фазные напряжения.

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    $display(
      a = e^(j 120degree) = cos 120degree + j sin 120degree = -1/2 + j sqrt(3)/2 \
      a^2 = e^(j 240degree) = -1/2 - j sqrt(3)/2 \
      un(I)_A + un(I)_B + un(I)_C = 0 \
      un(I)_B = a^2 un(I)_A\; space un(I)_C = a un(I)_A => un(I)_A + un(I)_B + un(I)_C = un(I)_A (1 + a + a^2) = 0 \
      un(U)_Л = un(U)_Ф
    )$
  ],
  [
    #figure(
      image("source-figures/lect8-2.png"),
    )
    $
      1/2 un(U)_(A B) = un(U)_B sqrt(3)/2 => U_B = U_(A B)/sqrt(3) => \ => U_Ф = U_Л/sqrt(3)
    $
  ],
)

Для соединения звездой $un(I)_Л = un(I)_Ф$; $un(U)_Л = sqrt(3) un(U)_Ф$; $P = sqrt(3) un(U)_Л un(I)_Л cos phi$; $Q = sqrt(3) un(U)_Л un(I)_Л sin phi$.

#grid(
  columns: (1fr, 1.5fr),
  column-gutter: 1em,
  [
    Для соединения треугольником $un(U)_Л = un(U)_Ф$; $un(I)_Л = sqrt(3) un(I)_Ф$; $P = un(U)_Л un(I)_Л cos phi$.
  ],
  [
    #figure(
      image("source-figures/lect8-3.png"),
    )
  ],
)

Для обоих соединений справедливо
$
  S = sqrt(3) U_Л I_Л
$

=== Выражение фазового напряжения

#v(1em)

$
  cases(
    delim: #none,
    display(
      cases(
        reverse: #true,
        delim: "|",
        un(I)_A = un(U)_A un(Y)_A,
        un(I)_B = un(U)_B un(Y)_B,
        un(I)_C = un(U)_C un(Y)_C,
      )
    ) un(U)_A un(Y)_A + un(U)_B un(Y)_B + un(U)_C un(Y)_C = 0,
    un(U)_B = un(U)_A - un(U)_(A B)\; space un(U)_C = un(U)_A + un(U)_(C A)
  ) cases(
    delim: "|",
    un(U)_A un(Y)_A + (un(U)_A - un(U)_(A B)) un(Y)_B + (un(U)_A + un(U)_(C A)) un(Y)_C = 0 =>,
    un(U)_A = display((un(Y)_B un(U)_(B C) - un(Y)_C un(U)_(A B))/(un(Y)_A + un(Y)_B + un(Y)_C)),
    un(U)_B = display((un(Y)_C un(U)_(B C) - un(Y)_A un(U)_(A B))/(un(Y)_A + un(Y)_B + un(Y)_C)),
    un(U)_C = display((un(Y)_A un(U)_(C A) - un(Y)_B un(U)_(B C))/(un(Y)_A + un(Y)_B + un(Y)_C)),
  )
$
