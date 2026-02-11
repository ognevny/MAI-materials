#import "meta.typ": conf
#import "@preview/physica:0.9.8": dv, evaluated, pdv

#show: conf.with(
  titl: "Семинары по Уравнениям математической физики",
  desc: "Семинары Кондратьевой Л.А. по Уравнениям математической физики",
  datet: datetime(year: 2026, month: 2, day: 10),
  head: [Семинары по Уравнениям математической физики],
)

ПОЖАЛУЙСТА, не используйте этот материал для того, чтобы быстро списать решение и показать его Людмиле Александровне. Я за честный заработок плюсов.

#outline()
#pagebreak(weak: true)

= Семинар 1

#v(1em)

+ $z'_x = 1 => z = integral 1 dif x = x + phi(y)$

  Ответ: $x + phi(y)$, где $phi(y)$ - произвольная функция

+ $z''_(x y) = 1 => z'_y = integral 1 dif x = x + phi(y), space (phi(y) "- произвольная функция")$

  $z = integral (x + phi(y)) dif y = y x + integral phi(y) dif y = y x + Phi(y) + psi(x)$

  Проверка

  $z'_y = x + phi(y), space (z'_y)'_x = 1 + 0 => 1 equiv 1$

  Ответ: $z = x y + Phi(y) + psi(x)$, где $Phi(y)$ - первообразная $phi(y)$, $psi(x)$ - произвольная функция

== УЧП первого порядка

#v(1em)

+ $z_x + z_y = 1, space P = 1, Q = 1, R = 1$

  $display(
    cases(
      (dif x)/1 = (dif y)/1,
      (dif y)/1 = (dif z)/1,
    ) => cases(
      x = y + C_1,
      y = z + C_2,
    ) => cases(
      C_1 = x - y,
      C_2 = y - z,
    ) => Phi(x - y, y - z) = 0 => y - z = phi(x - y) => \ => z = y - phi(x - y)
  )$

  Проверка

  $z'_x = (y_0 - phi(x - y_0))'_x = 0 - phi'_u dot 1 \
  z'_y = (y - phi(x_0 - y))'_y = 1 - phi'_u dot (-1) = 1 + phi'_u \
  -phi'_u + 1 + phi'_u equiv 1$

+ $x y z_x - x^2 z_y = y z, space P = x y, Q = -x^2, R = y z$

  $display(
    cases(
      (dif x)/(x y) = (dif y)/(-x^2),
      (dif x)/(x y) = (dif z)/(y z),
    ) => cases(
      (dif x)/y = (dif y)/(-x),
      (dif x)/x = (dif z)/z,
    ) => cases(
      integral -x dif x = integral y dif y,
      ln abs(x) = ln abs(z) - ln abs(C_2),
    ) => cases(
      -x^2/2 = y^2/2 - C_1/2,
      ln abs(z/x) = ln abs(C_2),
    ) => cases(
      x^2 + y^2 = C_1,
      z/x = tilde(C)_2,
    ) => \ => Phi(x^2 + y^2, z/x) = 0 => z/x = phi(x^2 + y^2) => z = x phi(x^2 + y^2)
  )$

+ $x z_x - y z_y = 0, space z(1, y) = y$

  $display(
    cases(
      (dif x)/x = (dif y)/(-y),
      (dif y)/(-y) = (dif z)/0,
    ) => cases(
      ln abs(x) = -ln abs(y) + ln abs(C_1),
      dif z = 0,
    ) => cases(
      ln abs(x y) = ln abs(C_1),
      z - C_2 = 0,
    ) => cases(
      x y = tilde(C)_1,
      z = C_2,
    ) => Phi(x y, z) = 0 => \ => z = phi(x y)
    \
    evaluated(z)_(x=1) = y <=> cases(delim: bar.v.double, x = 1, z = y) => z = evaluated(phi(x y))_(x=1) = phi(y) = y \
    cases(delim: bar.v.double, phi(t) = t, phi(x y) = x y)
  )$

+ (При решении задачи использовать свойство равной дроби, смотрите лекцию)

  $y z_x + x z_y = x + y, space x = 0: z = y + y^2$

  $display(
    (dif x)/y = (dif y)/x = (dif z)/(x + y) => cases(
      (dif x)/y = (dif y)/x,
      (1 dot dif x + 1 dot dif y)/(1 dot y + 1 dot x) = (dif z)/(x + y),
    ) => cases(
      x dif x = y dif y,
      (dif x + dif y)/cancel(x + y) = (dif z)/cancel(x + y),
    ) => cases(
      x^2/2 = y^2/2 + C_1/2,
      dif(x + y) = dif z,
    ) => \ => cases(
      x^2 - y^2 = C_1,
      x + y = z - C_2,
    ) => cases(
      C_1 = x^2 - y^2,
      C_2 = z - x - y,
    ) => z - x - y = phi(x^2 - y^2) => z = x + y + phi(x^2 - y^2)
    \
    evaluated(z)_(x=0) = evaluated((x + y + phi(x^2 - y^2)))_(x=0) = phi(-y^2) + cancel(y) = cancel(y) + y^2 \
    phi(-y^2) = y^2 \
    phi(t) = -t \
    phi(x^2 - y^2) = -(x^2 - y^2) = y^2 - x^2 \
    z = y^2 - x^2 + x + y
  ) \
  "Альтернативный способ получения частного решения" \
  display(
    cases(
      x^2 - y^2 = C_1,
      z - x - y = C_2,
    ) => cases(
      0 - y^2 = C_1,
      (y + y^2) - 0 - y = C_2,
    ) => cases(
      -y^2 = C_1,
      y^2 = C_2,
    ) => C_1 + C_2 = 0 \
    (x^2 - y^2) + (z - x - y) = 0 => z = x + y + y^2 - x^2
  )$

+ $(x - 4y) z_x - y z_y = 0$

  $display(
    (dif x)/(x - 4y) = (dif y)/(-y) = (dif z)/0 => dif z = 0 => z = C_1 \
    k_1 = 1\, space k_2 = -2 \
    (1 dot dif x - 2 dot dif y)/(1 dot (x - 4y) - 2 dot (-y)) = (dif y)/(-y) => dif(x - 2y)/(x - 2y) = (dif y)/(-y) => ln abs(x - 2y) = -ln abs(y) + C_2 => \ => tilde(C)_2 = x y - 2y^2
  )$

+ (Используется метод подстановки)

  $x z_x + y z_y = sqrt(x^2 + y^2)$

  $display(
    (dif x)/x = (dif y)/y = (dif z)/sqrt(x^2 + y^2) \
    ln abs(x) = ln abs(y) - ln abs(C_1) => ln abs(y/x) = ln abs(C_1) => y/x = C_1 => y = C_1 x \
    (dif x)/x = (dif z)/sqrt(x^2 + (C_1 x)^2) => sqrt(x^2 + x^2 C_1^2)/x dif x = dif z => (cancel(x) sqrt(1 + C_1^2))/cancel(x) dif x = dif z => \ => integral sqrt(1 + C_1^2) dif x = integral dif z => x sqrt(1 + C_1^2) = z - C_2 => x sqrt(1 + y^2/x^2) = z - C_2 => \ => sqrt(x^2 + y^2) = z - C_2 => C_2 = z - sqrt(x^2 + y^2) => Phi(y/x, z - sqrt(x^2 + y^2)) = 0 => \ => z - sqrt(x^2 + y^2) = phi(y/x) => z = phi(y/x) - sqrt(x^2 + y^2)
  )$

+ $x z_x + (y - sqrt(R^2 - z^2)) z_y = 0$

  $display(
    (dif x)/x = (dif y)/(y - sqrt(R^2 - z^2)) = (dif z)/0 \
    dif z = 0 => z = C_1
  )$

  $display(
    (dif x)/x = (dif y)/(y - sqrt(R^2 - C_1^2)) => (dif x)/x = dif(y - sqrt(R^2 - C_1^2))/(y - sqrt(R^2 - C_1^2)) => ln abs(x) = ln abs(y - sqrt(R^2 - C_1^2)) - ln abs(C_2) => \ => ln abs((y - sqrt(R^2 - C_1^2))/x) = ln abs(C_2) => tilde(C)_2 = (y - sqrt(R^2 - C_1^2))/x => tilde(C)_2 = (y - sqrt(R^2 - z^2))/x \
    Phi(z, (y - sqrt(R^2 - z^2))/x) = 0 "- оставляем ответ в неявном виде"
  )$
