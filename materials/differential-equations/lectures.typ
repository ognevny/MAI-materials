#import "meta.typ": conf
#import "@preview/cetz:0.4.2": canvas, draw
#import "@preview/physica:0.9.8": dv, evaluated, mdet, pdv

#show: conf.with(
  titl: "Лекции по Дифференциальным уравнениям",
  desc: "Конспект лекций Кондратьевой Л.А. по Дифференциальным уравнениям",
  datet: datetime(year: 2026, month: 1, day: 12),
  head: [Лекции по Дифференциальным уравнениям],
)

#let delimsys = ("{", "|")

#outline()
#hide[#link("https://gist.github.com/ognevny/9d45be15d9655b52c01538d9a2571799")] // надёжно спрятано))) ссылка безопасная, жми
#pagebreak(weak: true)

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

== Линейные ДУ первого порядка (продолжение)

#v(1em)

$y' + p(x) y = 0$ - ЛОДУ. Такие уравнения решаются методом разделения переменных.

$ y_О = tilde(C) e^(-integral p(x) dif x) $

ЛНДУ: $y' + p(x) y = q(x)$.

=== Метод вариации произвольной постоянной (в общем виде)

#v(1em)

$ y_"ОН" = C(x) e^(-integral p(x) dif x) $

$y'_"ОН" = (C(x) e^(-integral p(x) dif x))'= |p = p(x)| = C'(x) e^(-integral p dif x) + C(x) (e^(-integral p dif x))' = C'(x) e^(-integral p dif x) + \ + C(x) e^(-integral p dif x) (-integral p dif x)' = C'(x) e^(-integral p dif x) + C(x) e^(-integral p dif x) (-p)$

Подстановка:

$C'(x) e^(-integral p dif x) + cancel(C(x) e^(-integral p dif x) (-p(x))) + cancel(p(x) C(x) e^(-integral p dif x)) = q(x) \
C'(x) e^(-integral p dif x) = q(x) => C'(x) = q(x) e^(integral p dif x) => integral q(x) e^(integral p dif x) dif x + C_1 = C(x)$

Подставим в $y_"ОН"$:

$y_"ОН" = (integral q(x) e^(integral p dif x) dif x + C_1) e^(-integral p dif x) = integral q(x) e^(integral p dif x) dif x dot e^(-integral p dif x) + C_1 e^(-integral p dif x)$

==== Пример решения ЛНДУ

#v(1em)

$y' + 2x y = 2x \
"решаем ЛОДУ:" y' + 2x y = 0 \
(dif y)/(dif x) = -2x y |":" y != 0 \
integral (dif y)/y = integral -2x dif x \
ln abs(y) = -(2x^2)/2 + ln abs(C) \
ln abs(y) = ln e^(-x^2) + ln abs(C) \
abs(y) = abs(C e^(-x^2)) \
y = plus.minus C e^(-x^2) \
y = tilde(C) e^(-x^2), y_O = tilde(C) e^(-x^2)$

$y_"ОН" = C(x) e^(-x^2) \
y'_"ОН" = (C(x) e^(-x^2))' = C'(x) e^(-x^2) - C(x) dot 2x e^(-x^2) \
C'(x) e^(-x^2) - cancel(C(x) dot 2x e^(-x^2)) + cancel(2x C(x) e^(-x^2)) = 2x \
C'(x) e^(-x^2) = 2x => C'(x) = 2x e^(x^2) => C(x) = integral 2x e^(x^2) dif x = integral e^u dif u = e^u + C_1 = e^(x^2) + C_1 \
y_"ОН" = (e^(x^2) + C_1) e^(-x^2) = 1 + C_1 e^(-x^2)$

=== Метод Бернулли

#v(1em)

$y_"ОН" = u(x) v(x) \
y'_"ОН" = u' v + u v' \
y' + p(x) y = q(x); u' v + (u v' + p(x) u v) = q(x) \
u' v + u (v' + p(x) v) = q(x)$

Подберём $v$ такую, что $v' + p(x) v = 0$

$v_0 = tilde(C) e^(-integral p dif x) stretch(=>)^(tilde(C)=1) v_0 = e^(-integral p dif x)$ (можно брать любую $tilde(C) != 0$)

$u' e^(-integral p dif x) + u dot 0 = q(x) => u' = q(x) e^(integral p dif x) => u(x) = integral q(x) e^(integral p dif x) dif x + C_1 \
integral q(x) e^(integral p dif x) dif x dot e^(-integral p dif x) + C_1 e^(-integral p dif x) = y_"ОН"$

==== Решение того же самого примера методом Бернулли

#v(1em)

$y' + 2x y = 2x \
u' v + (u v' + 2x u v) = 2x \
u' v + u (v' + 2x v) = 2x \
v' + 2x v = 0 \
(dif v)/(dif x) = -2x v \
integral (dif v)/v = integral -2x dif x \
ln abs(v) = -x^2 + C \
ln abs(v) = x^2 + ln abs(C) => v_0 = e^(-x^2), tilde(C) = 1 \
u' e^(-x^2) + u dot 0 = 2x => u' = 2x e^(x^2) => u(x) = integral 2x e^(x^2) dif x = e^(x^2) + C_1 \
y_"ОН" = u v = (e^(x^2) + C_1) e^(-x^2) = 1 + e^(-x^2) C_1$

== Уравнение Бернулли

#v(1em)

$ y' + p(x)y = q(x) y^alpha, $ где $alpha$ - действительное число

=== Пример уравнения Бернулли

#v(1em)

$y' + 1/x y = -x y^2 \
underparen(u' v + u v', y') + 1/x underparen(u v, y) = -x underparen((u v), y)^2 \
u' v + u(v' + 1/x v) = -x u^2 v^2 \
v' + 1/x v = 0 \
(dif v)/(dif x) = -1/x v \
integral (dif v)/v = integral -(dif x)/x \
ln abs(v) = -(ln abs(x) + ln abs(c)) \
ln abs(v) = ln abs(c/x) \
v = plus.minus c/x \
v = tilde(C)/x; v_0 = 1/x \
u' 1/x + u dot 0 = -x u^2 1/x^2 \
u'/x + u^2/x = 0 \
u' = -u^2 \
(dif u)/(dif x) = -u^2 \
integral (dif u)/u^2 = integral -dif x \
-1/u = -x + C \
u = 1/(x - C); u = 1/(x + tilde(C)) \
y = u v = 1/(x - C) dot 1/x = 1/(x^2 - C x); y = 0 "- тоже решение"$

== ДУ в полных дифференциалах

#v(1em)

$ P(x, y) dif x + Q(x, y) dif y = 0, $ если $(partial P)/(partial y) = (partial Q)/(partial x)$ (в частных дифференциалах) $=> dif U(x, y) = 0 => U(x, y) = "const"$ - общий интеграл ДУ

=== Пример решения ДУ в полных дифференциалах

#v(1em)

$U(x, y) = integral_(x_0)^x P(x, y) dif x + integral_(y_0)^y Q(x, y) dif y$

#grid(
  columns: (1fr, 1fr),
  [
    #rect[$
      cases(
        U'_x = P(x, y),
        U'_y = Q(x, y),
      )
    $]
  ],
  [
    #figure(
      image("source-figures/lect3-1.png", width: 55%),
    )
  ],
)

Собственно пример:

$(x + sin y) dif x + (x cos y + sin y) dif y = 0 \
(partial P)/(partial y) = (x_0 + sin y)'_y = cos y \
(partial Q)/(partial x) = (x cos y_0 + sin_y_0)'_x = cos y \
display(U(x, y) = integral_(x_0=0)^x (x + sin y) dif x + integral_(y_0=0)^y (x_0 cos y + sin y) dif y = integral_0^x (x + sin y) dif x + integral_0^y sin y dif y = \ = evaluated((x^2/2 + sin y dot x))_0^x + evaluated((-cos y))_0^y = x^2/2 + x sin y - 0 + (-cos y + 1) = x^2/2 + x sin y - cos y + 1)$

Ответ: $x^2/2 + x sin y - cos y = "const"$

=== Ещё один пример

#v(1em)

$underparen((2x y - 5), P) dif x + underparen((3y^2 + x^2), Q) dif y = 0 \
display(
  cases(
    reverse: #true,
    delim: "|",
    (partial Q)/(partial x) = 2x,
    (partial P)/(partial y) = 2x,
  ) (partial Q)/(partial x) = (partial P)/(partial y) \
  cases(
    U'_x = P(x, y) = 2x y - 5 => U(x, y) = integral (2x y - 5) dif x = x^2 y - 5x + phi(y),
    U'_y = Q(x, y) = 3y^2 + x^2 => (x^2 - 5x + phi(y))'_y = 3y^2 + x^2,
  )
) \
x^2 - phi'_y = 3y^2 + x^2 => phi'_y = 3y^2 => phi(y) = 3y^2 => phi(y) = y^3 + C => U(x, y) = x^2 y - 5x + y^3 + C$

Ответ: $x^2 - 5x + y^3 = "const"$ - общий интеграл ДУ.

==== Обоснование данного метода

#v(1em)

Пусть $dif U(x, y) = U'_x dif x + U'_y dif y$

Совпадение $P dif x + Q dif y => display(cases(delim: #none, U'_x = P(x, y), U'_y = Q(x, y)) => cases(delim: #none, U''_(x y) = (U'_x)'_y = (P(x, y))'_y = (partial P)/(partial y), U''_(y x) = (U'_y)'_x = (Q(x, y))'_x = (partial Q)/(partial x)))$

==== Пример решения задачи методом интегрирующего множителя

#v(1em)

$(2x y + x^2 y + 1/3 y^2) dif x + (x^2 + y^2) dif y = 0 \
display(
  cases(
    reverse: #true,
    delim: "|",
    (2x y + x^2 y + 1/3 y^2)'_y = 2x + x^2 + y^2,
    (x^2 + y^2)'_x = 2x,
  ) => (partial Q)/(partial x) != (partial P)/(partial y)
)$

+ $mu(x)$, если $1/Q ((partial P)/(partial y) - (partial Q)/(partial x)) = F(x) => mu(x) = e^(integral F(x) dif x)$

+ $mu(y)$, если $-1/P ((partial P)/(partial y) - (partial Q)/(partial x)) = G(y) => mu(y) = e^(integral G(y) dif y)$

$1/Q ((partial P)/(partial y) - (partial Q)/(partial x)) = 1/(x^2 + y^2) (2x + x^2 + y^2 - 2x) = 1 => mu(x) = e^(integral 1 dif x) = e^x \
e^x (2x y + x^2 y + 1/3 y^3) dif x + e^x (x^2 + y^2) dif y = 0 \
display(
  cases(
    reverse: #true,
    delim: "|",
    (partial P)/(partial y) = e^x (2x + x^2 + y^2),
    (partial Q)/(partial x) = e^x (x^2 + y^2) + e^x dot 2x = e^x (2x + x^2 + y^2),
  ) =>(partial P)/(partial y) = (partial Q)/(partial x)
)$

Пусть $mu = mu(x); 1/Q ((partial P)/(partial y) - (partial Q)/(partial x)) = F(x)$

$underbrace(mu(x) P(x, y), P_1) dif x + underbrace(mu(x) Q(x, y), Q_1) dif y = 0 \
(partial P_1)/(partial y) = (partial Q_1)/(partial x) <=> partial/(partial y) (mu(x) P(x, y)) = partial/(partial x) (mu(x) Q(x, y)) \
mu(x) (partial P)/(partial y) = (dif mu)/(dif x) Q(x, y) + mu(x) (partial Q)/(partial y) \
(dif mu)/(dif x) Q(x, y) = mu(x) ((partial P)/(partial y) - (partial Q)/(partial x)) \
integral (dif mu)/mu = integral 1/Q ((partial P)/(partial y) - (partial Q)/(partial x)) dif x \
ln abs(mu(x)) = integral F(x) dif x \
mu(x) = e^(integral F(x) dif x)$

== ДУ не разрешенные относительно производных

#v(1em)

a) $y = f(x, y')$; Замена $y' = P(x); y = f(x, P(x)); (dif y)/(dif x) = f'(x, P(x))_x$

b) $x = f(y, y')$; Замена $y' = P(y); x = f(y, P(y)); (dif y)/(dif x) = f'(y, P(y))_y$

=== Решение примера данного ДУ

#v(1em)

$ y = x y' + y'^2 "- уравнение Клеро" $

$y' = P(x) => y = x P(x) + (P(x))^2 => (dif y)/(dif x) = (x P(x) + (P(x))^2)'_x = P(x) + x P'(x) + 2P(x) times \ times P'(x) = P(x) \
p = P(x) \
p = p + (x + 2p) p' \
(x + 2p) p' = 0 <=> display(
  cases(
    delim: "[",
    p' = 0" "&(1),
    x + 2p = 0" "&(2),
  )
) \
(1): p' = 0 => p = C => y' = C => y = x C + C^2$

Подставим в исходное уравнение:

$(2): display(
  cases(
    x = -2p,
    y = x p + p^2,
  ) <=> cases(
    x = -2p,
    y = -2p dot p + p^2 = -p^2,
  ) <=> cases(
    x = -2p,
    y = -p^2,
  )
)$

Исключаем параметр $p$:

$p = -x/2 => y = -(-x/2)^2 = -x^2/4$

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect4-1.png"),
    )
  ],
  [
    $y = -x^2/4$ - огибающее решение.

    Решение, в каждой точке которого нарушено условие задачи Коши (условие единственности), называется особым решением. Отсюда $y = -x^2/4$ также является особым решением
  ],
)

= ДУ второго порядка

#v(1em)

Уравнения, связывающие $x$, $y(x)$, $y'(x)$, $y''(x)$ называется ДУ второго порядка.

a) $y'' = f(x, y, y')$

b) $F(x, y, y', y'') = 0$

Дважды непрерывно дифференцируемая на $(a; b)$ функция $y = phi(x)$ называется решением ДУ, если подстановка $x$, $phi(x)$, $phi'(x)$, $phi''(x)$ обращает ДУ в тождество.

== Задача Коши для ДУ второго порядка

#v(1em)

Поиск решения ДУ второго порядка $y'' = f(x, y, y')$, удовлетворяющего начальным условиям $y(x_0) = y_0; y'(x_0) = y_1$.

== ДУ второго порядка, допускающая понижения порядка

#v(1em)

$y'' = f(x)$ решаем дважды интегрированием

$y'' = e^x; "Н.У:" y(0) = 1 "и" y'(0) = 2 \
y' = integral e^x dif x = e^x + C_1 \
y = integral (e_x + C_1) dif x = e^x + C_1 x + C_2 "- общее решение"$

$y(0) = evaluated((e^x + C_1 x + C_2))_(x=0) = 1 => 1 + 0 + C_2 = 1 => C_2 = 0 \
y'(0) = evaluated(((e^x + C_1 x + C_2)'))_(x=0) = 2 => evaluated((e^x + C_1))_(x=0) = 2 => 1 + C_1 = 2 => C_1 = 1$

=== Ещё один пример решения ДУ, не разрешённого относительно производной

#v(1em)

$x = 4/9 y'^2 \
y' = p(y) \
x = 4/9 (p(y))^2 \
(dif x)/(dif y) = 4/9 dot 2 p'(y) dot p(y) => 1/p = 8/9 p (dif p)/(dif y) => integral dif y = integral 8/9 p^2 dif p => display(
  cases(
    y = 8/27 p^3 + C,
    x = 4/9 p^2,
  ) <=> cases(
    x = (2/3 p)^2,
    y + C = (2/3 p)^3,
  ) <=> \ <=> cases(
    x^3 = (2/3 p)^6,
    (y + C)^2 = (2/3 p)^6,
  ) <=> (y + C)^2 = x^3 <=> y + C = plus.minus sqrt(x^3) <=> y = plus.minus sqrt(x^3) - C
)$

== Уравнения, допускающие понижение порядка (продолжение)

#v(1em)

#grid(
  columns: (1fr, 1.8fr),
  [
    $F(x, y', y'') = 0 \
    y' = z(x) \
    y'' = z'(x)$
  ],
  [
    $y'' = y'/x => z' = z/x => (dif z)/(dif x) = z/x => (dif z)/z = (dif x)/x => ln abs(z) = ln abs(C x) => \ => z = tilde(C) x, tilde(C) = plus.minus C \
    y' = tilde(C) x => y = integral tilde(C) x dif x = tilde(C) x^2/2 + C_2 \
    y = C_1 x^2 + C_2$
  ],
)

#v(1em)

#grid(
  columns: (1fr, 1.8fr),
  [
    $F(y, y', y'') = 0 \
    y' = z(y) \
    y'' = (z(y))'_x = z'_y dot y'_x = z'_y dot z$
  ],
  [
    $y'' = e^(2y), "НУ:" display(
      cases(
        y(0) = 0,
        y'(0) = 1,
      )
    ) \
    y' = z \
    y'' = z (dif z)/(dif y) \
    z (dif z)/(dif y) = e^(2y) => integral z dif z = integral e^(2y) dif y => z^2/2 = e^(2y)/2 + C => z^2 = e^(2y) + 2C$
  ],
)

Из НУ $1^2 = e^(2 dot 0) + 2C => 1 = 1 + 2C => C = 0$

$y' = plus.minus e^y$; так как $y'(0) = 1$, то выбираем "+"

$y' = e^y => (dif y)/e^y = dif x => -e^(-y) = x + C \
y(0) = 0 => -e^(-0) = 0 + C_1 => C_1 = -1 => -e^(-y) = x - 1 => e^(-y) = 1 - x => \ => ln e^(-y) = ln(1 - x) => -y = ln(1 - x) => y = ln(1/(1 - x))$

== Линейные ДУ 2-ого порядка

#v(1em)

$ y'' + p_1(x) y' + p_2(x) y = f(x), $ где $p_1(x)$, $p_2(x)$ и $f(x)$ - непрерывные функции

Если $f(x) = 0$, то ЛОДУ, иначе ЛНДУ.

=== Решение ЛОДУ

#v(1em)

$y'' + p_1(x) y' + p_2(x) y = 0 \
y'' = underbrace(-p_1(x) y' - p_2(x) y, f(x, y, y')) \
(partial f)/(partial y) = -p_2(x); (partial f)/(partial y') = -p_1(x)$

=== Теорема Коши

#v(1em)

Пусть задано $y'' = f(x, y, y')$ с НУ $display(
  cases(
    y(x_0) = y_0,
    y'(x_0) = y_1,
  )
)$

Пусть $f(x, y, y')$, $(partial f)/(partial y)$ и $(partial f)/(partial y')$ в области $D subset RR^3$, содержащей точку $(x_0, y_0, y_1)$, непрерывны. Тогда в $(x_0 - h, x_0 + h)$ существует единственное дважды дифференцируемое решение ДУ 2-ого порядка, удовлетворяющее ДУ.

=== Определитель Вронского

#v(1em)

Два линейно независимых (ЛНЗ) на $(a, b)$ решения ЛОДУ называется ФСР этого ДУ. Определитель Вронского $ W = mdet(y_1(x), y_2(x); y'_1(x), y'_2(x)) $

$y_1(x)$, $y_2(x)$ - ЛНЗ на $(a, b) <=> W(x) = mdet(y_1, y_2; y'_1, y'_2) != 0 forall x in (a, b)$

Пример: ${cos 2x, sin 2x}$

$mdet(cos 2x, sin 2x; -2sin 2x, 2cos 2x) = 2cos^2 2x - (-2sin^2 2x) = 2 dot 1 = 2 != 0 "- ЛНЗ"$

=== Теорема о структуре общего решения ЛОДУ

#v(1em)

Пусть $y_1(x)$, $y_2(x)$ - ЛНЗ на $(a, b)$ решения ЛОДУ. Тогда общее решение имеет вид $ y_"общ" = C_1 y_1 (x) + C_2 y_2 (x) $

Дано: $y_1(x)$, $y_2(x)$ - решения ЛОДУ $y'' + p_1 y' + p_2 y = 0$

Показать, что $forall C_1, C_2: (C_1 y_1 + C_2 y_2)$ - решения ЛОДУ

$display(
  cases(
    reverse: #true,
    delim: bar.v.double,
    tilde(y)' = C_1 y'_1 + C_2 y'_2,
    tilde(y)'' = C_1 y''_2 + C_2 y''_2,
  ) => "ЛОДУ"
) \
(C_1 y''_2 + C_2 y''_2) + p_1 (C_1 y'_1 + C_2 y'_2) + p_2 (C_1 y_1 + C_2 y_2) = 0 \
C_1 cancel((y''_1 + p_1 y'_1 + p_2 y_1)) + C_2 cancel((y''_2 + p_1 y'_2 + p_2 y_2)) = 0 => 0 equiv 0 => C_1 y_1 + C_2 y_2 "- решение ЛОДУ"$

Дано $y_1(x)$, $y_2(x)$ - ЛНЗ решения ЛОДУ, $z(x)$ - произвольное решение ЛОДУ с НУ $display(
  cases(
    z(x_0) = z_0,
    z'(x_0) = z_1,
  )
)$

Показать, что $exists tilde(C)_1, tilde(C)_2: z(x) = tilde(C)_1 y_1(x) + tilde(C)_2 y_2(x)$

$tilde(y) = C_1 y_1(x) + C_2 y_2(x)$

Из НУ $display(
  cases(
    z(x_0) = C_1 y_1(x_0) + C_2 y_2(x_0) = z_0,
    z'(x_0) = C_1 y'_1(x_0) + C_2 y'_2(x_0) = z_1,
  )" "mat(y_1(x_0), y_2(x_0); y'_1(x_0), y'_2(x_0)) mat(C_1; C_2) = mat(z_0; z_1)
)$

Так как $y_1$, $y_2$ - ЛНЗ, то $W(x_0) != 0 =>$ СЛАУ имеет единственное решение при $tilde(C)_1$, $tilde(C)_2$: $ z_(x_0) = tilde(C)_1 y_1(x_0) + tilde(C)_2 y_2(x_0) $

В силу теоремы Коши это - тождество на $(a, b)$

$z(x) equiv tilde(C)_1 y_1(x) + tilde(C)_2 y_2(x)$, иначе через точку $x_0$ проходит более одного решения; приходим к противоречию.

=== Решение ЛОДУ 2-ого порядка с постоянными коэффициентами

#v(1em)

$ y'' + p_1 y' + p_2 y = 0; p_1, p_2 = "const" $

Будем искать решение вида $y = e^(k x)$

$y' = k e^(k x), y'' = k^2 e^(k x)$. Подставляем в ДУ

$k^2 e^(k x) + p_1 k e^(k x) + p_2 e^(k x) = 0 \
k^2 + p_1 k + p_2 = 0 "- характеристические уравнения"$

$y'' - 3y' + 2y = 0 \
k^2 e^(k x) - 3k e^(k x) + 2e^(k x) = 0 \
k^2 - 3k + 2 = 0 \
k_1 = 1 => y_1 = e^(1x) \
k_2 = 2 => y_2 = e^(2 x)$

$display(W = mdet(e^x, e^(2x); e^x, 2e^(2x)) = 2e^(3x) - e^(3x) = e^(3x) != 0) => "ЛНЗ" => y_"общ" = C_1 e^x + C_2 e^(2 x)$

== Линейный оператор

#v(1em)

Назовем левую часть ЛДУ 2 порядка линейным дифференциальным оператором и обозначим $L_2[y]$, тогда $L_2[y] = 0$ - ЛОДУ, а $L_2[y] = f(x)$ - ЛНДУ.

$ underbrace(y'' + p_1 y' + p_2 y, L_2[y]) = f(x) $

$display(
  cases(
    reverse: #true,
    delim: "|",
    y'' + 6y' + 9y = 0,
    y' = k e^(k x),
    y'' = k^2 e^(k x),
  ) => k^2 e^(k x) + 6k e^(k x) + 9e^(k x) = 0 <=> k^2 + 6k + 9 = 0 <=> k = -3 = k_1 = k_2 => W[y_1, y_2] = 0
)$

$z(x) = y' + 3y \
z'(x) = y'' + 3y' \
(y'' + 3y') + (3y' + 9y) = 0 <=> z = tilde(C) e^(-3x) \
y' + 3y = tilde(C) e^(-3x) \
y' + 3y = 0 => y_0 = C_1 e^(-3x) \
y_"ОН" = C(x) e^(-3x) \
y'_"ОН" = C'(x) e^(-3x) - 3C(x) e^(-3x) \
C'(x) e^(-3x) - cancel(3C(x) e^(-3x)) + cancel(3C(x) e^(-3x)) = tilde(C) e^(-3x) \
C'(x) e^(-3x) = tilde(C) e^(-3x)
C'(x) = tilde(C)
C(x) = integral tilde(C) dif x = tilde(C) x + C_1 \
y_"ОН" = (C(x) e^(-3x)) = (tilde(C) x + C_1) e^(-3x) \
y = tilde(C) underbrace(x e^(-3x), y_2) + C_1 underbrace(e^(-3x), y_1)$

$display(
  cases(
    y_1 = e^(-3x),
    y_2 = x e^(-3x),
  )" "W = mdet(e^(-3x), x e^(-3x); -3e^(-3x), e^(-3x) - 3x e^(-3x)) = e^(-6x) - 3x e^(-6x) + 3x e^(-6x) = e^(-6x) != 0 "- ЛНЗ"
)$

$y'' + 9y = 0 \
k^2 e^(k x) + 9e^(k x) = 0 \
e^(k x) (k^2 + 9) = 0 \
k^2 + 9 <=> display(
  cases(
    k_1 = 3i => y_1 = e^(3i x),
    k_2 = -3i => y_2 = e^(-3i x),
  )
) \
y_"ОН" = C_1 e^(3i x) + C_2 e^(-3i x) = C_1 (cos 3x + i sin 3x) + C_2 (cos(-3x) + i sin(-3x)) = \ = C_1 cos 3x + i C_1 sin 3x + C_2 cos 3x - i C_2 sin 3x = underparen((C_1 + C_2), tilde(C)_1) cos 3x + underparen(i (C_1 - C_2), tilde(C)_2) sin 3x$

$ y_О = tilde(C)_1 cos 3x + tilde(C)_2 sin 3x $

$underparen(y'' + 9y, L_2[y]) = 0 \
L_2[sin 3x] = (sin 3x)'' + 9sin 3x = -9 sin 3x + 9 sin 3x equiv 0 \
L_2[cos 3x] = (cos 3x)'' + 9cos 3x = -9 cos 3x + 9 cos 3x equiv 0 \
W = mdet(cos 3x, sin 3x; -3sin 3x, 3cos 3x) = 3cos^2 3x + 3sin^2 3x != 0 => y_1, y_2 "- ЛНЗ"$

=== Алгоритм формирования ФСР

#v(1em)

Для ЛОДУ с постоянными коэффициентами

+ $k_1, k_2$ - действительные, различные, тогда $y_1 = e^(k_1 x), y_2 = e^(k_2 x)$ - ЛНЗ
+ $k_1 = k_2 = k$ - двукратный корень $y_1 = e^(k x), y_2 = x e^(k x)$ - ЛНЗ
+ $alpha plus.minus i beta$ - пара комплексно сопряжённых корней $y_1 = e^(alpha x) cos beta x, y_2 = e^(alpha x) sin beta x$

$y'' - 2y' + 5 = 0 \
k^2 - 2k + 5 dot 1 = 0 \
D/4 = (-1)^2 - 5 = -4 \
k_1 = 1 - 2i => y_1 = e^x cos 2x \
k_2 = 1 + 2i => y_2 = e^x sin 2x$

Ответ: $y_о = C_1 e^x cos 2x + C_2 e^x sin 2x$

=== Решение ЛНДУ 2 порядка $L_2[y] = f(x)$

#v(1em)

Пусть $y_1(x)$, $y_2(x)$ - ФСР ЛОДУ $L_2[y] = 0$

$y_"част"$ -- какое-либо решение ЛНДУ $L_2[y] = f(x)$

Тогда $ y_"ОН" = C_1 y_1 + C_2 y_2 + y_"част" "или" y_"ОН" = y_о + y_"част" $ (теорема о структуре общего решения)

Дано: $y_1(x)$, $y_2(x)$ - ФСР ЛОДУ $L_2[y_1] = 0$, $L_2[y_2] = 0$

$y_"част"$ -- решение ЛНДУ $L_2[y_"част"] = f(x)$

Доказать $forall C_1, C_2: tilde(y) = C_1 y_1 + C_2 y_2 + y_"част"$ - решение ЛНДУ

$L_2[C_1 y_1 + C_2 y_2 + y_"част"] = f(x) <=> L_2[C_1 y_1] + L_2[C_2 y_2] + \ + L_2[y_"част"] = C_1 L_2[y_1] + C_2 L_2[y_2] + L_2 [y_"част"] = C_1 dot 0 + C_2 dot 0 + f(x) = f(x)$

Пусть $y_1(x)$, $y_2(x)$ - ФСР ЛОДУ $L_2[y] = 0$

$y_"част"$ -- какое-либо решение ЛНДУ $L_2[y_"част"] = f(x)$

$z(x)$ - произвольное решение ЛНДУ

$exists tilde(C)_1, tilde(C)_2: z(x) = tilde(C)_1 y_1 + tilde(C)_2 y_2 + y_"част"$

$L_2[z - y_"част"] = L_2[z] - L_2[y_"част"] = f(x) - f(x) equiv 0$

$(z - y_"част") "- решение ЛОДУ" => "по теореме о структуре общего решения ЛОДУ" \
exists tilde(C)_1, tilde(C)_2: z - y_"част" = tilde(C)_1 y_1 + tilde(C)_2 y_2$

=== Метод вариации произвольной постоянной для ЛНДУ 2 порядка

#v(1em)

$ y_"ОН" = C_1(x) y_1(x) + C_2(x) y_2(x), $ где $C_1(x)$, $C_2(x)$ определяются из системы $display(
  cases(
    C'_1 y_1 + C'_2 y_2 = 0,
    C'_1 y'_1 + C'_2 y'_2 = f(x),
  )
)$

$y'_"ОН" = C_1' y_1 + C_1 y'_1 + C'_2 y_2 + C_2 y'_2 = C_1 y'_1 + C_2 y'_2 + underbrace(C_1' y_1 + C'_2 y_2, 0) \
y''_"ОН" = C'_1 y'_1 + C_1 y''_1 + C'_2 y'_2 + C_2 y''_2 = C'_1 y'_1 + C'_2 y'_2 + C_1 y''_1 + C_2 y''_2 \
L_2[y_"ОН"] = C'_1 y'_1 + C'_2 y'_2 + C_1 y''_1 + C_2 y''_2 + p_1 (C_1 y'_1 + C_2 y'_2) + p_2 (C_1 y_1 + C_2 y_2) = f(x) \
C'_1 y'_1 + C'_2 y'_2 + C_1 cancel((y''_1 + p_1 y'_1 + p_2 y_1)) + C_2 cancel((y''_2 + p_1 y'_2 + p_2 y_2)) = f(x) => C'_1 y'_1 + C'_2 y'_2 = f(x)$

$display(
  mat(y_1, y_2; y'_1, y'_2) mat(C'_1; C'_2) = mat(0, f(x))" "W != 0 => "система имеет единственное решение" cases(
    C'_1 = phi_1(x),
    C'_2 = phi_2(x),
  ) => \ => cases(
    C_1(x) = integral phi_1(x) dif x,
    C_2(x) = integral phi_2(x) dif x,
  )
)$

$y'' + y = 1/(cos x) \
y'' + y = 0 \
k^2 + 1 = 0 => k_(1,2) = plus.minus i \
"ФСР" {cos x, sin x} \
y_о = C_1 cos x + C_2 sin x \
display(
  vec(
    delim: delimsys,
    align: #left,
    C'_1 cos x + C'_2 sin x = 0,
    C'_1 (cos x)' + C'_2 (sin x)' = 1/(cos x),
  ) cases(
    delim: #none,
    sin x,
    cos x,
  ) => + cases(
    delim: #none,
    C'_1 cos x sin x + C'_2 sin^2 x = 0,
    C'_1 (-sin x cos x) + C'_2 cos^2 x = 1,
  )" "C'_2 = 1
)$

= Линейные ДУ N-ого порядка

#v(1em)

$ y^((n)) + p_1(x) y^((n-1)) + p_2(x) y^((n-2)) + ... + p_(n-1)(x) y' + p_n(x) y = f(x), $ где $p_i(x)$ и $f(x)$ - непрерывные функции.

$y = phi(x)$ - решение ДУ, если подстановка $phi(x)$, $phi'(x)$, ..., $phi^((n))(x)$ обращает ДУ в тождество; $phi(x)$ -- непрерывно дифференцируемая n раз функция на $(a, b)$.

$f(x) = 0 => L_n [y] = 0 "- ЛОДУ" \
  f(x) != 0 => L_n [y] = f(x) "- ЛНДУ"$

== Задача Коши для ДУ N-ого порядка

#v(1em)

Поиск решения ДУ n-ого порядка с дополнительными начальными условиями $display(
  cases(
    y(x_0) = y_0,
    y'(x_0) = y_1,
    dots.v,
    y^((n-1))(x_0) = y_(n-1),
  )
)$

== Решение ЛОДУ N-ого порядка

#v(1em)

$n$ ЛНЗ на $(a, b)$ решений ЛОДУ n-ого порядка называется фундаментальной системой решений (ФСР).

=== Определитель Вронского

#v(1em)

$ W = mdet(y_1, y_2, ..., y_n; y'_1, y'_2, ..., y'_n; ..., ..., dots.down, dots.v; y_1^((n-1)), y_2^((n-1)), ..., y_n^((n-1))) $

==== Теорема об определителе Вронского

#v(1em)

$n$ решений ЛОДУ n-ого порядка ЛНЗ на $(a, b)$ $<=>$ $W != 0 forall x in (a, b)$

=== Теорема о структуре общего решения ЛОДУ

#v(1em)

Пусть $y_1(x)$, $y_2(x)$, ..., $y_n(x)$ - ЛНЗ на $(a, b)$ решения ЛОДУ n-ого порядка $L_n [y] = 0$. Тогда общее решение имеет вид $ y_"общ" = sum_(k=1)^n C_k y_k (x), $ где $C_k$ - произвольные постоянные.

Дано: ${y_k}$ - ФСР ЛОДУ, $z(x)$ - произвольное решение ЛОДУ с НУ $display(
  cases(
    z(x_0) = z_0,
    z'(x_0) = z_1,
    dots.v,
    z^((n-1))(x_0) = z_(n-1),
  )
)$

$display(exists tilde(C)_k: z(x) = sum_(k=1)^n C_k y_k (x))$

Возьмем $display(z = sum_(k=1)^n C_k y_k)$, тогда

$display(
  cases(
    z(x_0) = sum C_k y_k (x_0) = z_0,
    z'(x_0) = sum C_k y'_k (x_0) = z_1,
    dots.v,
    z^((n-1)) (x_0) = sum C_k y_k^((n-1)) (x_0) = z_(n-1),
  ) #text[ -- СЛАУ относительно $C_k$]
)$

$display(
  mat(
    y_1 (x_0), ..., y_n (x_0);
    ..., dots.down, dots.v;
    y_1^((n-1)), ..., y_n^((n-1)) (x_0)
  ) mat(C_1; dots.v; C_n) = mat(z_0; dots.v; z_(n-1))
)$

так как ${y_k}$ ЛНЗ, то $W != 0 => exists "единственное решение СЛАУ": tilde(C)_1, tilde(C)_2, ..., tilde(C)_n$

$z(x_0) = display(sum_(k=1)^n tilde(C)_k y_k (x_0))$

В силу теоремы Коши равенство является тождеством на $(a, b)$, иначе через точку $x_0$ проходит более одного решения.

=== Решение ЛОДУ N-ого порядка с постоянными коэффициентами (метод Эйлера)

#v(1em)

$p_i = "const"$, решения вида $y = e^(k x)$

$y' = k e^(k x)$, $y'' = k^2 e^(k x)$, ..., $y^((n-1)) = k^(n-1) e^(k x)$, $y^((n)) = k^n e^(k x)$

Характеристическое уравнение (ХУ): $ k^n + p_1 k^(n-1) + p_2 k^(n-2) + ... + p_(n-2) k^2 + p_(n-1) k + p_n = 0 $

==== Алгоритм формирования ФСР для ЛОДУ n-ого порядка

#v(1em)

+ Всякому действительному корню $k$ кратности $r$ соответствует $r$ ЛНЗ решений: $e^(k x), x e^(k x), x^2 e^(k x), ..., x^(n-1) e^(k x)$
+ Всякой паре комплексных корней $alpha plus.minus beta$ кратности $m$ соответствует $2m$ ЛНЗ решений: $e^(alpha x) cos beta x, e^(alpha x) sin beta x, x e^(alpha x) cos beta x, x e^(alpha x) sin beta x, ..., x^(n-1) e^(alpha x) cos beta x, x^(n-1) e^(alpha x) sin beta x$

$y^"IV" - y''' - 3y'' + 5y' + 2y = 0 \
  k^4 - k^3 - 3k^2 + 5k + 2 = 0 \
  k = 2, 0 equiv 0 => (k + 2) (k^3 - 3k^2 + 3k - 1) = 0 => (k + 2) (k - 1)^3$

Ответ: $y_"общ" = C_1 e^(-2x) + C_2 e^x + C_3 x e^x + C_4 x^2 e^x$

$y^"VI" + 2y^"IV" + y^"II" = 0 \
  k^6 + 2k^4 + k^2 = 0 \
  k^2 (k^4 + 2k^2 + 1) = 0 \
  k^2 (k^2 + 1)^2 = 0 \
  k^2 = -1 => k_(1,2) = plus.minus i => e^(0x) cos 1x, e^(0x) sin 1x, x e^(0x) cos 1x, x e^(0x) sin 1x \
"ФСР" {e^(0x), x e^(0x), cos x, sin x, x cos x, x sin x}$

Ответ: $y_о = C_1 + C_2 x + C_3 cos x + C_4 sin x + C_5 x cos x + C_6 x sin x$

== Решение ЛНДУ N-ого порядка

=== Теорема о структуре общего решения ЛНДУ n-ого порядка

#v(1em)

Пусть ${y_k (x)}$ - ФСР ЛОДУ n-ого порядка $L_n [y]$

Пусть $y_"част"$ -- какое-либо решение ЛНДУ n-ого порядка $L_n [y_"част"] = f(x)$, тогда $ y_"ОН" = sum_(k=1)^n C_k y_k (x) + y_"част" "или" y_"ОН" = y_о + y_"част" $

Дано ${y_k}$ - решение ЛОДУ $L_n [y_k] = 0$; $y_"част"$ - решение ЛНДУ $L_n [y_"част"] = f(x)$

$ forall C_k: (sum_(k=1)^n C_k y_k + y_"част") "- решение ЛНДУ" $

$L_n [sum C_k y_k + y_"част"] = f(x) \
  L_n [sum C_k y_k] + L_n [y_"част"] = display(sum_(k=1)^n) L_n [C_k y_k] + L_n [y_"част"] = display(sum_(k=1)^n) C_k underbracket(L_n [y_k], 0) + underbracket(L_n [y_"част"], f(x)) = f(x)$

Дано: ${y_k}$ - ФСР ЛОДУ $L_n [y] = 0$; $y_"част"$ - решение $L_n [y_"част"] = f(x)$

$z(x)$ - произвольное решение ЛОДУ, то есть $L_n [z] = f(x)$

$ exists tilde(C)_k: z(x) = sum_(k=1)^n tilde(C)_k y_k + y_"част" $

$L_n [z - y_"част"] = L_n [z] - L_n [y_"част"] = f(x) - f(x) = 0 => (z - y_"част") "- решение ЛОДУ" \ "тогда по теореме о структуре общего решения ЛОДУ" \
  exists tilde(C)_k: z - y_"част" = sum tilde(C)_k y_k => z = display(sum_(k=1)^n) tilde(C)_k y_k + y_"част"$

=== Теорема о суперпозиции решений ЛНДУ

#v(1em)

Пусть $y_1(x)$ - решение $L_n [y] = f_1(x)$, а $y_2(x)$ - решение $L_n [y] = f_2(x)$, тогда $y_1(x) + y_2(x)$ -- решение уравнения $L_n [y] = f_1(x) + f_2(x)$
