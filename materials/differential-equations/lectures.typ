#import "meta.typ": conf
#import "@preview/cetz:0.4.2": canvas, draw

#show: conf.with(
  titl: "Лекции по Дифференциальным уравнениям",
  desc: "Конспект лекций Кондратьевой Л.А. по Дифференциальным уравнениям",
  datet: datetime(year: 2026, month: 1, day: 12),
  head: [Лекции по Дифференциальным уравнениям],
)

#let delimsys = ("{", "|")

#hide[#link("https://gist.github.com/ognevny/9d45be15d9655b52c01538d9a2571799")] // пускай здесь будет, может потом куда переставить????

= ДУ 1 порядка

#v(1em)

Уравнение, где искомая функция находится под знаком производной или под знаком дифференциала, называется дифференциальным. Уравнение, связывающее независимую $x$, искомую $y(x)$ и $y'(x)$, называется ДУ 1 порядка.

а) $y' = f(x, y)$

б) $F(x, y, y') = 0$ -- неявно выраженная

в) $P(x, y) dif x + Q(x, y) dif y$ = 0

$ y' = (dif y)/(dif x) $

$y' + y = 1 => y' = 1 - y; y' + y - 1 = 0; (dif y)/(dif x) + y = 1 => (dif y)/(dif x) = 1 - y => (1 - y) dif x - dif y = 0$

Функция $y = phi(x)$, непрерывно диффернцируемая на интервале $(a; b)$ называется решением ДУ, если подстановка $phi(x), phi'(x)$ обращает ДУ в тождество для любого $x$ из $(a; b)$.

+ $phi(x) = 1; phi'(x) = 0 => "ДУ": 0 + 1 equiv 1 => y = 1$ - решение ДУ.
+ $y = phi(x) = x^2; y' = phi'(x) = 2x => "ДУ": 2x + x^2 equiv.not 1 => y = x^2$ не является решением ДУ.
+ $y = phi(x) = C e^(-x) + 1; y' = phi'(x) = -C e^(-x) => "ДУ": -C e^(-x) + 1 - (-C e^(-x)) equiv 1 =>$
$=> y = -C e^(-x) + 1$ -- решение ДУ

== Задача Коши

#v(1em)

Поиск решения ДУ $y' = f(x, y)$, удовлетворающего дополнительному условию $y(x_0) = y_0$ (начальные условия - НУ), называется задачей Коши.

$y' = 2x => y(x) = integral 2x dif x = x^2 + C$ -- семейство интегральных кривых.

$y = phi(x) = x^2 + C; y' = phi'(x) => 2x + 0 equiv 2x$

$y(1) = 2, y(1) = x^2 + C|_(x=1) = 2$

$1^2 + C = 2 => C = 1 => y = x^2 + 1$ -- решение задачи Коши

$y = C e^x, y' = C e^x => "ДУ": C e^x equiv C e^x$

НУ $y'(0) = -1; y(0) = C e^x|_0 = C e^0 = -1 => C = -1 => y = -e^x$ -- решение задачи Коши

=== Теорема Коши

#v(1em)

Пусть $f(x, y)$ и $f'_y(x, y)$ непрерывны в области $D subset RR^2$. Тогда ДУ $y' = f(x, y)$ имеет в достаточно малом промежутке $(x_0 - h; x_0 + h)$ единственное непрерывно диффернцируемое решение, удовлетворающее НУ $y(x_0) = y_0$ для любых $(x_0; y_0) in D$.

$y' = 1 - y; f(x, y) = 1 - y; f'_y (x, y) = -1 =>$ по т. Коши ДУ имеет единственное решение для всех точек XOY.

$y' = sqrt(1 - y^2); f(x, y) = sqrt(1 - y^2); f'_y (x, y) = 1/2 dot 1/sqrt(1 - y^2) dot (-2y) = -y/sqrt(1 - y^2); y != plus.minus 1 =>$ условие т. Коши не выполнено $=>$ нарушена либо единственность решения, либо существование решения.

$y = phi(x) = 1; y' = 0 => "ДУ": 0 = sqrt(1 - 1^2) equiv 0 => y = 1$ -- решение

$y = -1; y' = 0 => "ДУ": 0 = sqrt(1 - (-1)^2) equiv 0 => y = -1$ -- решение

== Геометрический смысл ДУ 1 порядка

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    $y'(x_0) - tg(alpha) = K_"кас" \
    y'(x_0) = f(x_0, y_0)$
  ],
  [
    #figure(
      image("source-figures/lect1-2-1.png", width: 90%),
    )
  ],
)

=== Метод Эйлера для решения задач Коши на $[a; b]$ для ДУ $y' = f(x, y)$ с НУ $y(x_0) = y_0$

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect1-2-2.png"),
    )
  ],
  [
    $display(h = (b - a)/n)$ -- шаг метода

    $M_0(x_0, y_0) -> y'(x_0) = f(x_0, y_0) - tg(alpha) \
    forall x in [x_0; x_1]: y'(x) = "const" \
    y - y_0 = y'(x_0, y_0) (x - x_0) => (x_1, y_1); \
    underbrace(y_1 - y_0, Delta y) = underbrace(y'(x_0), tg(alpha)) underbrace((x_1 - x_0), h) \
    Delta y = h tg(alpha) \
    display(
      M_1 cases(
        delim: bar.v.double,
        y'(x_0) = f(x_0, y_0),
        x_1 = x_0 + h,
        y_1 = y_0 + h f(x_0, y_0),
      )
    ) \
    display(
      M_2 cases(
        delim: bar.v.double,
        y'(x_1) = f(x_1, y_1),
        x_2 = x_1 + h,
        y_2 = y_1 + h f(x_1, y_1),
      )
    )$
  ],
)

Линия $f(x, y) = k$, где $k = y'(x) = "const"$, называется изоклиной для ДУ $y' = f(x, y)$

$y' = 1 - y, y' = k; k = 1 - y => y = 1 - k$
#grid(
  columns: (1fr, 2.4fr),
  column-gutter: 1em,
  align: horizon,
  [
    #table(
      columns: 3,
      align: center + horizon,
      [$k$], [Уравнение], [Наклон],
      [0],
      [$y=1$],
      [#canvas({
        draw.line((-0.5, 0), (0.5, 0))
        draw.line((0, -0.5), (0, 0.5))
        draw.group({
          draw.stroke(1.5pt)
          draw.line((0, 0), (0.5, 0))
        })
      })],

      [1],
      [$y=0$],
      [#canvas({
        draw.line((-0.5, 0), (0.5, 0))
        draw.line((0, -0.5), (0, 0.5))
        draw.group({
          draw.stroke(1.5pt)
          draw.line((0, 0), (0.5, 0.5))
        })
      })],

      [2],
      [$y=-1$],
      [#canvas({
        draw.line((-0.5, 0), (0.5, 0))
        draw.line((0, -0.5), (0, 0.5))
        draw.group({
          draw.stroke(1.5pt)
          draw.line((0, 0), (0.25, 0.5))
        })
      })],

      [-1],
      [$y=2$],
      [#canvas({
        draw.line((-0.5, 0), (0.5, 0))
        draw.line((0, -0.5), (0, 0.5))
        draw.group({
          draw.stroke(1.5pt)
          draw.line((0, 0), (-0.5, 0.5))
        })
      })],
    )
  ],
  [
    #figure(
      image("source-figures/lect1-2-3.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  column-gutter: 1em,
  [$display(
    cases(
      reverse: #true,
      delim: "|",
      y' = x^2 + y^2,
      k = x^2 + y^2,
    ) => #table(
      columns: 3,
      align: center + horizon,
      [$k$], [Уравнение], [Наклон],
      [1],
      [$1=x^2+y^2$],
      [#canvas({
        draw.line((-0.5, 0), (0.5, 0))
        draw.line((0, -0.5), (0, 0.5))
        draw.group({
          draw.stroke(1.5pt)
          draw.line((0, 0), (0.5, 0.5))
        })
      })],
    )
  )$],
  [
    #figure(
      image("source-figures/lect1-2-4.png"),
    )
  ],
)

== Аналитические методы решения ДУ

=== ДУ с разделяемыми переменными

#v(1em)

а) $y' = f(x)/g(x)$

б) $f(x) dif x = g(y) dif y$

в) $M_1 (x) N_1 (y) dif x + M_2 (x) N_2 (y) dif y = 0$

$y' = y/x => y' = (dif y)/(dif x) => (dif y)/(dif x) = y/x => dif y = y/x dif x |":" y != 0 (!) => integral (dif y)/y = integral (dif x)/x => ln abs(y) = ln abs(x) + ln abs(C)$

$C != 0 => abs(y) = abs(C x) => y = plus.minus C x =>$ $tilde(C) x$ -- общее решение

Проверка: $y = 0, y' = 0 => "ДУ": 0 = 0/x, 0 equiv 0$

Ответ: $y = tilde(C) x$

$y' = 1 - y => (dif y)/(dif x) = 1 - y => dif y = (1 - y) dif x |":" (1-y)!=0 (!) => (dif y)/(1 - y) = dif x => integral (dif y)/(1 - y) = integral dif x => \ => ln abs(y - 1) = -x + ln abs(C), C != 0 => ln abs(y - 1) = ln e^(-x) + ln abs(C) => ln abs(y - 1) = ln abs(C e^(-x)) => \ => abs(y - 1) = abs(C e^(-x)) => y - 1 = plus.minus C e^(-x) => y = 1 + tilde(C) e^(-x)$

Проверка: $1 - y = 0, y = 1; y' = 0: 0 = 1 - 1 => 0 equiv 0$

Ответ: $y = 1 + tilde(C) e^(-x)$

$y(0) = 1/2 \
(dif T)/(dif t) = -k (T - T_"вн"); T_"вн" = 20 degree C". "T(t) "- температура чайника"$

$(dif T)/(dif t) = -k (T - 20) => dif T = -k (T - 20) dif t |":" (T - 20) => integral (dif T)/(T - 20) = -k integral dif t => ln(T - 20) = \ = -k t + ln abs(C) => ln(T - 20) = ln e^(-k t) + ln abs(C) => ln(T-20) = ln abs(C e^(-k t)) => T - 20 = C e^(-k t) => \ => T(t) = 20 + C e^(-k t)$

$display(
  cases(
    reverse: #true,
    delim: "|",
    T(0) = 100 degree,
    T(10) = 60 degree,
    T(x) = 25 degree,
  ) => cases(
    delim: #none,
    T(0) = 20 + C e^(-k dot 0) => 100 = 20 + C => C = 80,
    T(10) = 20 + 80e^(-k dot 10) => 60 = 20 + 80e^(-10k) => 80e^(-10k) = 40 => e^(-10k) = 1/2 =>,
    => e^(10k) = 2 => 10k = ln 2 => k = (ln 2)/10" "(e^(-k t) = 1/2),
  )
)$

$T(x) = 25 degree => 25 = 20 + 80e^(-k x) => e^(-k x) = 1/16$

$display(
  cases(
    e^(-k t) = 1/2,
    e^(-k x) = 1/16,
  ) <=> vec(
    delim: delimsys,
    -k t = ln 1/2,
    -k x = ln 1/16,
  ) => t/x = (ln 1/2)/(ln 1/16) => 10/x = (ln 2)/(ln 16) => 10/x = log_16 2 => 10/x = 1/4 => \ => x = 40
)$

==== Однородные ДУ

#v(1em)

$y' = phi(y/x)$. Замена $u(x) = y/x$

$y = x u(x), y' = (x u(x))' = u(x) + u'(x) dot x = y/x - 1 = u - 1$

$u + x u' = u - 1 => x u' = -1 => u' = -1/x, x != 0 => u = -ln abs(x) + ln abs(C) => u = ln abs(C/x) => y/x = ln abs(C/x) => \ => y = x ln abs(C/x) \
y' = e^(y/x) + y/x => y' = e^u + u => x u' = e^u => x (dif u)/(dif x) = e^u => integral (dif u)/e^u = integral (dif x)/x => -e^(-u) = ln abs(x) + ln abs(C) => \ => e^(-u) = -ln abs(x) + ln abs(C) => e^(-u) = ln abs(C/x) => -u = ln ln abs(C/x) => u = -ln ln abs(C/x) => y = -x ln ln abs(C/x) \
y' = y/x + sin y/x => ... => y = 2x("arctg"(tilde(C) x) + pi n)$

Проверка: $sin u = 0 => u = pi k, y = pi k x$ входит в решение

== Линейные ДУ

#v(1em)

$y' + P(x) y = Q(x)" "display(
  cases(
    delim: #none,
    Q(x) = 0 => y' + P(x) = 0 "- линейное однородное ДУ - ЛОДУ",
    Q(x) != 0 "- линейное неоднородное ДУ - ЛНДУ",
  )
)$

ЛОДУ: $(dif y)/(dif x) = -y P(x) dif x |":" y != 0 => integral (dif y)/y = -integral P(x) dif x =>$

$=> ln abs(y) = -integral P(x) dif x => ln abs(y) = ln(abs(C) e^(-integral P(x) dif x)) => abs(y) = abs(C) e^(-integral P(x) dif x) => \ => y = plus.minus C e^(-integral P(x) dif x) => y_О = tilde(C) e^(-integral P(x) dif x)$

=== Методы решения ЛНДУ 1-ого порядка

==== Метод вариации произвольной постоянной (метод Лагранжа)

#v(1em)

$ y_"ОН" = C(x) Y_О, $ где $Y_О = tilde(C) e^(-integral P(x) dif x)$, $C(x)$ - некоторая функция

$tilde(C) -> C(x)$

$y' + y/(1 + x) = cos(x)/(1 + x) \
y' + y/(1 + x) = 0 => (dif y)/(dif x) = -y/(1 + x) => integral (dif y)/y = -integral (dif x)/(1 + x) => ln abs(y) = ln abs(C/(1 + x)) => y = (plus.minus C)/(1 + x) => y = (tilde(C))/(1 + x) \
y_О = (tilde(C))/(1 + x), y_"ОН" = C(x)/(1 + x) \
y'_"ОН" = (C' (1 + x) - C)/(1 + x)^2 = C'/(1 + x) - C/(1 + x)^2 \
C'/(1 + x) - C/(1 + x)^2 + C/(1 + x)^2 = (cos x)/(1 + x) => C'/(1 + x) = (cos x)/(1 + x) => C'(x) = cos x => C(x) = sin x + C_1$

$y_"ОН" = (sin x + C_1)/(1 + x)$ -- общее решение
