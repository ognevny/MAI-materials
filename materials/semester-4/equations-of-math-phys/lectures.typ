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

=== Метод подстановки

#v(1em)

$x pdv(z, x) + y pdv(z, y) = 2x y$

$display(
  (dif x)/x = (dif y)/y = (dif z)/(2x y) \
  cases(
    (dif x)/x = (dif y)/y => ln abs(x) = ln abs(y) + ln abs(C_1) => x/y = tilde(C)_1 => y = x/C_1 "- подстановка",
    (dif x)/x = (dif z)/(2x y),
  ) \
  (dif x)/cancel(x) = (dif z)/(2cancel(x) dot x/C_1) => (2x)/C_1 dif x = dif z => x^2/C_1 = z - C_2 => z - x^2/C_1 = C_2 => z - x^2/(x/y) = C_2 => z - x y = C_2 \
  Phi(phi_1(x, y, z), phi_2(x, y, z)) = 0 => Phi(x/y, z - x y) = 0 => z - x y = phi(x/y) => z = x y + phi(x/y)
)$

$ pdv(u, t) + u pdv(u, x) = 0, $ $u(x, t) "- скорость"$

$display(
  (dif t)/1 = (dif x)/u = (dif u)/0 \
  cases(
    dif u = 0 => u = C_1,
    (dif t)/1 = (dif x)/u,
  ) \
  dif t = (dif x)/C_1 => C_1 integral dif t = dif x => C_1 t = x - C_2 => u t = x - C_2 => C_2 = x - u t \
  Phi(u, x - u t) = 0 "- ответ"
)$

$x pdv(z, x) - y pdv(z, y) = x - y quad z(1, y) = y + e^y$

$display(
  (dif x)/x = (dif y)/(-y) = (dif z)/(x - y) \
  (dif x)/x = (dif y)/(-y) => ln abs(x) = -ln abs(y) + ln abs(C_1) => abs(x y) = abs(C_1) => C_1 = x y \
  "Опираемся на свойство равных дробей" \
  (1 dot dif x + 1 dot dif y)/cancel(1 dot x + 1 dot (-y)) = (dif z)/cancel(x - y) => dif(x + y) = dif z => x + y = z - C_2 => C_2 = z - x - y \
  Phi(x y, z - x - y) = 0 => z - x - y = phi(x y) => z = phi(x y) + x + y \
  z(1, y) = y + e^y\, space evaluated(z)_(x=1) = evaluated(phi(x y) + x + y)_(x=1) = phi(y) + 1 + cancel(y) = cancel(y) + e^y => \ => phi(y) = e^y - 1 => phi(t) = e^t - 1 => phi(x y) = e^(x y) - 1 \
  "Ответ:" z = e^(x y) - 1 + x + y
)$

Аналогично для функций больших переменных $ a_1 pdv(u, x_1) + a_2 pdv(u, x_2) + ... + a_n pdv(u, x_n) = b, $ функция $u(x_1, x_2, ..., x_n)$; $a_i$, $b$ - непрерывные коэффициенты

$
  (dif x_1)/a_1 = (dif x_2)/a_2 = ... = (dif x_n)/a_n = (dif u)/b \
  Phi(C_1, C_2, ..., C_n) = 0
$

$x u_x + y u_y + z u_z = 0$

$display(
  (dif x)/x = (dif y)/y = (dif z)/z = (dif u)/0 \
  dif u = 0 => u = C_1 \
  cases(
    (dif x)/x = (dif y)/y,
    (dif y)/y = (dif z)/z,
  ) => cases(
    ln abs(x) = ln abs(y) - ln abs(C_2),
    ln abs(y) = ln abs(z) - ln abs(C_3),
  ) => cases(
    abs(y/x) = abs(C_2),
    abs(z/y) = abs(C_3),
  ) => cases(
    C_2 = y/x,
    C_3 = z/y,
  ) \
  Phi(u, y/x, z/y) = 0 => u = phi(y/x, z/y)
)$

== УЧП 2-ого порядка

#v(1em)

$
  underbracket(a_11 u_(x x) + 2a_12 u_(x y) + a_22 u_(y y), "главная часть") + b_1 u_x + b_2 u_y + c u = f(x, y) \
  Delta = a_12^2 - a_11 dot a_22
$
+ $Delta > 0$ - гиперболический тип
+ $Delta = 0$ - параболический тип
+ $Delta < 0$ - эллиптический тип
$a_(i j)$, $b_j$, $c$, $f(x, y)$ - непрерывные функции

$x u_(x x) - 2u_(x y) + y u_(y y) + u = 0$

$a_11 = x, space a_12 = - 1, space a_22 = y => Delta = (-1)^2 - x y$

#grid(
  columns: (1.5fr, 1fr),
  column-gutter: 1em,
  [
    + $1 - x y > 0 => x y < 1$ - гиперболический
    + $1 - x y = 0 => x y = 1$ - параболический
    + $1 - x y < 0 => x y > 1$ - эллиптический

    $x y = 1 => y = 1/x$ - выполняется для точек, лежащих на гиперболе
  ],
  [
    #figure(
      image("source-figures/lect2-1.png"),
    )
  ],
)

$u(s, v) \
s = s(x, y) \
v = v(x, y) \
pdv(u, x) = pdv(u, s) dot pdv(s, x) + pdv(u, v) dot pdv(v, x) \
pdv(u, y) = pdv(u, s) dot pdv(s, y) + pdv(u, s) dot pdv(s, y) \
u = u(xi, eta) \
xi = xi(x, y) \
eta = eta(x, y) \
u_x = u_xi dot xi_x + u_eta dot eta_x \
u_y = u_xi dot xi_y + u_eta dot eta_y \
u_(x x) = (u_xi dot xi_x + u_eta dot eta_x)'_x = (u_xi)'_x dot xi_x + u_xi dot (xi_x)'_x + (u_eta)'_x dot eta_x + u_eta dot (eta_x)'_x = \ = [(u_(xi xi) dot xi_x + u_(xi eta) eta_x) dot xi_x + u_xi dot xi_(x x)] + [(u_(eta xi) dot xi_x + u_(eta eta) dot eta_x) dot eta_x + u_eta dot eta_(x x)] = ... \
u_(x y) = ... \
u_(y y) = ... \
macron(a)_11 = underbrace(a_11 xi_x^2 + 2a_12 xi_x xi_y + a_22 xi_y^2 = 0, (1)) \
... \
macron(a)_11 u_(xi xi) + 2macron(a)_12 u_(xi eta) + macron(a)_22 u_(eta eta) = 0$

=== Лемма 1

#v(1em)

Пусть $xi = phi(x, y)$ - решение уравнения УЧП (1), тогда $phi(x, y) = C$ является первым интегралом дифференциального уравнения $ a_11 (dif y)^2 - 2a_12 dif x dif y + a_22 (dif x)^2 = 0 quad (2), $ носящего название характеристического уравнения (внимание на "минус" перед $a_12$!!!)

$triangle.r xi = phi(x, y)$ в (1)

$a_11 phi_x^2 + 2a_12 phi_x phi_y + a_22 phi_y^2 = 0 \
a_11 (-phi_x/phi_y)^2 - 2a_12 (-phi_x/phi_y) + a_22 = 0$

В $phi(x, y) = C quad y = f(x, C)$

$dv(y, x) = -phi_x/phi_y$

$a_11 dv(y, x)^2 - 2a_12 dv(y, x) + a_22 = 0 \
dv(y, x) = (a_12 plus.minus sqrt(a_12^2 - a_11 a_22))/a_11 \
dv(y, x) = (a_12 plus.minus Delta)/a_11 <=> a_11 dif y = (a_12 plus.minus sqrt(Delta)) dif x$

Приведение к каноническому виду:
+ $Delta > 0, space xi = phi(x, y), space eta = psi(x, y) => u_(xi eta) = b_1 u_eta + b_2 u_eta + c u + f(xi, eta)$
+ $Delta = 0, space xi = phi(x, y), space eta = psi(x, y)$ произвольные дважды дифференцируемые функции

  $u_(eta eta) = b_1 u_eta + b_2 u_eta + c u + f(xi, eta)$

+ $Delta = 0 => phi(x, y) plus.minus i psi(x, y) = C_(1,2) => u_(xi xi) + u_(eta eta) = b_1 u_eta + b_2 u_eta + c u + f(xi, eta)$

=== Повторение

#v(1em)

$
  underbrace((a_11 xi_x^2 + 2a_12 xi_x xi_y + a_22 xi_y^2), = 0) u_(xi xi) \
                      a_11 xi_x^2 + 2a_12 xi_x xi_y + a_22 xi_y^2 = 0 quad & (1) \
              a_11 (dif y)^2 - 2a_12 dif x dif y + a_22 (dif x)^2 = 0 quad & (2)
$

=== Лемма 2

#v(1em)

Пусть $phi(x, y) = C$ - первый интеграл ДУ $(2)$, тогда $xi = phi(x, y)$ - решение УЧП $(1)$

$triangle.r$ Пусть $phi(x, y) = C$ - первый интеграл $(2)$, тогда $y = f(x, C)$ имеет производную $dv(y, x) = -phi_x/phi_y => "ДУ" (2)$

$a_11 dv(y, x)^2 - 2a_12 dv(x, y) + a_22 = 0 \
a_11 (-phi_x/phi_y)^2 - 2a_12 (-phi_x/phi_y) + a_22 = 0 | dot (phi_y)^2 \
a_11 phi_x^2 - 2a_12 (-phi_x phi_y) + a_22 phi_y^2 = 0 \
a_11 phi_x^2 + 2a_12 phi_x phi_y + a_22 phi_y^2 = 0 => "функция" xi = phi(x, y) "является решением УЧП" (1)$

$
  xi = phi(x, y) => macron(a)_11 = 0 \
  eta = psi(x, y) => macron(a)_22 = 0
$

=== Методика получения общего решения УЧП 2-ого порядка

#v(1em)

+ Определить тип, составить характеристическое уравнение

+ Найти замены $display(cases(xi = xi(x, y), eta = eta(x, y)))$, привести к каноническому виду

+ Найти общее решение $u(xi, eta)$
  + Гиперболический тип: $u_(xi xi) = F(xi, eta, u_xi, u_eta, u)$ - дважды проинтегрировать по $xi$ и по $eta$
  + Параболический тип: $u_(eta eta) = F(xi, eta, u_xi, u_eta, u)$ - дважды проинтегрировать по $eta$
  + Эллиптический тип: $u_(xi xi) + u_(eta eta) = 0 <=> laplace u = 0$ для $phi(x, y) plus.minus i psi(x, y) = C_(1,2)$

    $display(
      cases(
        xi = phi(x, y),
        eta = psi(x, y),
      ) space u = Phi_1(C_1) + Phi_2(C_2) semi space "либо" u = "Re"f(C) "или" u = "Im"f(C)
    )$

=== Пример

#v(1em)

$u_(x x) - 2u_(x y) + u_(y y) + u_x - u_y = 0$

$display(
  Delta = (-1)^2 - 1 dot 1 = 0 => "параболический вид" \
  1 (dif y)^2 + 2 (dif x) (dif y) + 1 (dif x) = 0 \
  dv(y, x)^2 + 2dv(y, x) + 1 = 0 \
  (dv(y, x) + 1)^2 = 0 => dv(y, x) = -1 => dif y = -dif x => y = -x + C => C = x + y \
  cases(
    xi = y + x,
    eta = x,
  ) \
  xi_x = 1 quad xi_y = 1 \
  eta_x = 1 quad eta_y = 0 \
  pdv(u, x) = u_xi xi_x + u_eta eta_x = u_xi + u_eta \
  pdv(u, y) = u_xi xi_y + u_eta eta_y = u_xi \
  u_(x x) = (u_x)'_x = (u_xi + u_eta)'_x = (u_xi)'_xi xi_x + (u_xi)'_eta eta_x + (u_eta)'_xi xi_x + (u_eta)'_eta eta_x = u_(xi xi) + 2u_(xi eta) + u_(eta eta) \
  u_(x y) = (u_y)'_x = (u_xi)'_x = (u_xi)'_xi xi_x + (u_xi)'_eta eta_x = u_(xi xi) + u_(xi eta) \
  u_(y y) = (u_y)'_y = (u_xi)'_y = (u_xi)'_xi xi_y + (u_xi)'_eta eta_y = u_(xi xi) \
  cancel(u_(xi xi)) + cancel(2u_(xi eta)) + u_(eta eta) - 2(cancel(u_(xi xi)) + cancel(u_(xi eta))) + cancel(u_(xi xi)) + cancel(u_xi) + u_eta - cancel(u_xi) = 0 \
  u_(eta eta) + u_eta = 0 \
  u_(eta eta) = -u_eta \
  (u_eta)_eta = -(u)_eta \
  u_eta = -u + phi(xi) \
  dv(u, eta) = -u + phi(xi) \
  (dif u)/(u - phi(xi)) = -dif eta \
  ln abs(u - phi(xi)) = -eta + ln abs(psi(xi)) \
  abs(u - phi(xi)) = abs(psi(xi)) e^(-eta) \
  u - phi(xi) = tilde(psi)(xi) e^(-eta) \
  u(xi, eta) = tilde(psi)(xi) e^(-eta) + phi(xi) \
  "Обратная замена" \
  u(x, y) = tilde(psi)(y + x) e^(-x) + phi(y + x)
)$

$display(
  "Альтернативный способ (работает при постоянных коэффициентах)" \
  u''_(eta eta) + u'_eta = 0 \
  y'' + y' = 0 \
  k^2 + k = 0 \
  k (k + 1) = 0 <=> k = 0\, space k = 1 \
  y = C_1(xi) + C_2(xi) e^(-eta) \
  u = C_1(y + x) + C_2(y + x) e^(-x) \
  v = u_eta \
  v_eta + v = 0 => dv(v, eta) = -v => (dif v)/v = -dif eta => ln abs(v) = -eta + ln abs(phi(xi)) \
  v = tilde(phi)(xi) e^(-eta) => dv(u, eta) = tilde(phi)(xi) e^(-eta) => dif u = tilde(phi)(xi) e^(-eta) dif eta => u = tilde(phi)(xi) (-e^(-eta)) + psi(xi) \
  u = Phi(xi) e^(-eta) + psi(xi)\, "где" Phi(xi) = -tilde(phi)(xi) quad tilde(phi)(xi) = plus.minus phi(xi)
)$

$ u_(x x) - 4u_(x y) - 21u_(y y) + 10u_x + 30u_y = 0 $

$display(
  ... \
  cases(
    xi = y + 7x,
    eta = y - 3x,
  ) quad cases(
    delim: #none,
    xi_x = 7 quad xi_y = 1,
    eta_x = -3 quad eta_y = 1,
  ) \
  ... \
  u_(xi eta) = u_eta \
  v = u_eta \
  v_xi = v => dv(v, xi) = v => (dif v)/v = dif xi => ln abs(v) = xi + ln abs(phi(eta)) \
  ln abs(v) = ln(abs(phi(eta)) e^xi) \
  v = plus.minus phi(eta) e^xi \
  dv(u, eta) = u_eta = v = tilde(phi)(eta) e^xi \
  integral dif u = integral tilde(phi)(eta) e^xi dif eta \
  u = e^xi integral tilde(phi)(eta) dif eta = e^xi Phi(eta) + psi(xi) \
  u(x, y) = e^(x + 7y) Phi(y - 3x) + psi(y + 7x)
)$
