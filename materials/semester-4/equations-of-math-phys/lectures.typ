#import "meta.typ": conf
#import "@preview/physica:0.9.8": dv, evaluated, pdv

#show: conf.with(
  titl: "Лекции по Уравнениям математической физики",
  desc: "Лекции Кондратьевой Л.А. по Уравнениям математической физики",
  datet: datetime(year: 2026, month: 2, day: 10),
  head: [Лекции по Уравнениям математической физики],
)

#outline()
#pagebreak(weak: true)

= Уравнения в частных производных (УЧП)

#v(1em)

Уравнение, связывающее независимые переменные $x$, $y$, функцию $u$, зависящих от $x$ и $y$, первые частные производные $u$, вторые частные производные $u$, и так далее вплоть до порядка $n$, называется уравнением в частных производных

$ F(x, y, u(x, y), u'_x, u'_y, u''_(x x), u''_(x y), u''_(y y), u'''_(x x x), u'''_(x x y), ..., u_x^((n))) = 0 $

Введём обозначение $u'_x = u_x$, $u''_(x y) = u_(x y)$ и так далее#footnote[Там ещё некоторое время использовались штрихи, далее нужно привыкнуть к записям без штрихов]

$u = phi(x, y)$ - решение УЧП, если при подстановке... (аналогично тому, что было в ДУ)

Пример $u''_(y y) = 0 stretch(<=>)^(x=x_0) (u'_y)'_y = 0 => u'_y = phi(x) => u(x, y) = integral phi(x) dif y = phi (x) y + psi(x)$. Функции $phi(x)$ и $psi(x)$ - произвольные.

$u'_y = (y dot phi(x_0) + psi(x_0))'_y = phi(x_0) + 0 \
u''_(y y) = (phi(x_0))'_y = 0$

Ответ: $u(x, y) = phi (x) y + psi(x)$, где $phi(x)$ и $psi(x)$ - произвольные функции.

$u_x u_y - y u_y = 0 => u_y (u_x - y) = 0 => \ => display(
  cases(
    delim: "[",
    u_y = 0 => u = phi(x),
    u_x - y = 0 => u_x = y => u = integral y dif x = y integral dif x = y dot x + psi(y)
  )
)$

Замечание: при получении общего решения получаем произвольные функции, количество которых совпадает с порядком уравнения.

== Уравнение теплопроводности

#v(1em)

$ u_t = a^2 u_(x x) + f(x, t), $ где $u(x, t)$ - температура в точке $x$ в момент времени $t$.

Краевые или начальные условия могут выглядеть как
- $u(x, 0) = phi(x)$ - температура в точке $x$ в момент времени $t = 0$ (начальное условие)
- $u(0, t) = psi(t)$ - закон изменения температуры в точке $x = 0$ в момент времени $t$ (краевое условие)

== Уравнение колебаний гибкой струны

#v(1em)

$ u_(t t) = a^2 u_(x x) + f(x, t), $ где $u(x, t)$ - отклонение от положения равновесия

Краевые или начальные условия могут выглядеть как
- $u(x, 0) = phi(x)$ - положение струны при $t = 0$
- $u(0, t) = 0$ - закрепленный конец струны $x = 0$

== Уравнения Лапласа

#v(1em)

$ laplace u = 0 quad pdv(u, x, [2]) + pdv(u, y, [2]) = 0 $

$laplace u(phi, r) = 0 \
laplace u = f(x, y)$

$evaluated(u(r, phi))_(r=R) = f(phi)$ - задание функции на окружности по условию Дирихле

$evaluated((nabla u(r, phi))_n)_(r=R) = f(phi)$ - условие Неймана

== Уравнение Хопфа

#v(1em)

$ pdv(u, t) + u pdv(u, x) = 0, $ $u$ - скорость жидкости

== Уравнение потенциала скорости для расчёта скорости в несжимаемом потоке

#v(1em)

$ (1 - M^2) pdv(u, x, [2]) + pdv(u, y, [2]) + pdv(u, z, [2]) = 0, $ $u(x, y, z)$ - потенциал скорости, $M$ - число Маха, $evaluated(pdv(u, n))_r = 0$.

== УЧП первого порядка

#v(1em)

$ P(x, y, z) pdv(z, x) + Q(x, y, z) pdv(z, y) = R(x, y, z) quad (1), $ где функция $z(x, y)$ - неизвестная. Такое уравнение называется квази-линейным.

Если коэффициенты $P$, $Q$ и $R$ зависят только от $x$ и $y$, то это линейное УЧП.

$R(x, y, z) = 0$ - однородное УЧП

Составляем систему
$
  (dif x)/P(x, y, z) = (dif y)/Q(x, y, z) = (dif z)/R(x, y, z) quad (2) \
  cases(
    dot(x) = P(x, y, z),
    dot(y) = Q(x, y, z),
    dot(z) = R(x, y, z),
  )
$

Получение общего решения
$ Phi(phi_1(x, y, z), phi_2(x, y, z)) = 0, $ $phi_1(x)$, $phi_2(x)$ - первые интегралы системы ОДУ

$P(x, y, z) pdv(z, x) + Q(x, y, z) pdv(z, y) - R(x, y, z) = 0$

Векторы ${P, Q, R}$, $n = {pdv(z, x), pdv(z, y), -1}$ - вектор нормали к поверхности

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect1-1.png"),
    )
  ],
  [
    Вектор #text(red)[$tau = {x(t), y(t), z(t)}$] параллелен #text(blue)[${P, Q, R}$] - это условие (2).
  ],
)

$display(
  cases(
    phi(x, y, z) = C_1,
    phi(x, y, z) = C_2,
  )
), space "доказать" Phi(C_1, C_2) = 0 "- общее решение (1)" \
Phi(C_1(x, y, z), C_2(x, y, z)) = 0 quad F(x, y, z) \
pdv(z, x) = -F_x/F_z
pdv(z, y) = -F_y/F_z
pdv(z, x) = -Phi_x/Phi_z \
pdv(z, y) = -Phi_y/Phi_z \
P(x, y, z) (-Phi_x/Phi_z) + Q(x, y, z) (-Phi_y/Phi_z) = R(x, y, z) |dot Phi_z \
P Phi_x + Q Phi_y + R Phi_z = 0 \
Phi_x = pdv(Phi, C_1) pdv(C_1, x) + pdv(Phi, C_2) pdv(C_2, x) \
Phi_y = pdv(Phi, C_1) pdv(C_1, y) + pdv(Phi, C_2) pdv(C_2, y) \
Phi_z = pdv(Phi, C_1) pdv(C_1, z) + pdv(Phi, C_2) pdv(C_2, z) \
P (pdv(Phi, C_1) pdv(C_1, x) + pdv(Phi, C_2) pdv(C_2, x)) + Q (pdv(Phi, C_1) pdv(C_1, y) + pdv(Phi, C_2) pdv(C_2, y)) + R (Phi_z = pdv(Phi, C_1) pdv(C_1, z) + pdv(Phi, C_2) pdv(C_2, z)) = 0 \
pdv(Phi, C_1) underbrace((pdv(C_1, x) P + pdv(C_1, y) Q + pdv(C_1, z) R), dv(C_1, t)) + pdv(Phi, C_2) underbrace((pdv(C_2, x) P + pdv(C_2, y) Q + pdv(C_2, z) R), dv(C_2, t)) = 0 space (P = dot(x), Q = dot(y), R = dot(z)) \
0 equiv 0$

$underparen(-x, P) pdv(z, x) + underparen(y, Q) pdv(z, y) = underparen(z, R) => (2) (dif x)/(-x) = (dif y)/y = (dif z)/z => \ => display(
  cases(
    integral (dif x)/(-x) = integral (dif y)/y => -ln abs(x) = ln abs(y) - ln abs(C_1) => ln abs(x y) = ln abs(C_1) => x y = tilde(C)_1,
    integral (dif y)/y = integral (dif z)/z => ln abs(y) = ln abs(z) - ln abs(C_2) => ln abs(z/y) = ln abs(C_2) => z/y = tilde(C)_2,
  ) => Phi(C_1, C_2) = 0
) \
Phi(x y, z/y) => z/y = phi(x y)$

Ответ: $z = y phi(x y)$, где $phi$ - произвольная функция

=== Задача Коши

#v(1em)

$y pdv(z, x) - x pdv(z, y) = y^2 - x^2, space z(0, y) = 1/y^2 => (2) space (dif x)/y = (dif y)/(-x) = (dif z)/(y^2 - x^2) \
display(
  cases(
    (dif x)/y = (dif y)/(-x),
    (1 dot dif x + 1 dot dif y)/(1 dot y + 1 dot (-x)) = (dif z)/(y^2 - x^2),
  ) => cases(
    -x dif x = y dif y,
    (dif x + dif y)/cancel((y - x)) = (dif z)/(cancel((y - x)) (y + x)),
  ) => cases(
    -x^2/2 = y^2/2 - C/2,
    d(x + y) = (dif z)/(x + y),
  ) => cases(
    x^2 + y^2 = C_1,
    (x + y)^2/2 = z - C_2,
  ) => \ => cases(
    x^2 + y^2 = C_1,
    z - 1/2 (x + y)^2 = C_2,
  ) => Phi(x^2 + y^2, z - 1/2 (x + y)^2) = 0 \
  z - 1/2 (x + y)^2 = phi(x^2 + y^2) => z = 1/2 (x + y)^2 + phi(x^2 + y^2) \
  cases(
    delim: bar.v.double,
    x = 0,
    z = 1/y^2,
  ) \
  z = evaluated(1/2 (x + y)^2 + phi(x + y^2))_(x=0) = 1/2 y^2 + phi(y^2) = 1/y^2 => phi(y^2) = 1/y^2 - 1/2 y^2 => phi(t) = 1/t - 1/2 t space (t = y^2) \
  phi(x^2 + y^2) = 1/(x^2 + y^2) - 1/2 (x^2 + y^2)
)$

Ответ: $z = 1/2 (x + y)^2 + 1/(x^2 + y^2) - 1/2 (x^2 + y^2) = x y + 1/(x^2 + y^2)$

(Свойство равных дробей: $display(alpha_1/beta_1 = alpha_2/beta_2 = lambda => forall k_1\, k_2: (k_1 alpha_1 + k_2 alpha_2)/(k_1 beta_1 + k_2 beta_2) = lambda)$)
