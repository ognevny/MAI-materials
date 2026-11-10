#import "meta.typ": conf, const

#show: conf.with(
  title: "Семинары по Гидравлике",
  description: "Семинары Ордоньез Лазарева А.Э. по Гидравлике",
  date: datetime(year: 2026, month: 09, day: 07),
  head: [Семинары по Гидравлике],
)

#let Re = math.op("Re")

#outline()
#pagebreak(weak: true)

= Свойства жидкости

#v(1em)

Плотность
$
  rho = m/W, space [rho] = "кг"/м^3
$

Удельный вес
$
  gamma = G/W; space gamma = rho arrow(g)
$

Давление
$
  p = arrow(p)/S; [p] = "Па"
$

Коэффициенты сжимаемости соответственно по объему и температуре
$
  & beta_w = 1/W (Delta W)/(Delta p); space beta_w = 1/E_w, \
  & beta_T = 1/W (Delta W)/(Delta T),
$
где $E_w$ -- модуль упругости

$
  Delta p = (beta_"тж" - beta_"тм") E_ж Delta T
$

== Задача 1.1

#v(1em)

Дано: \
$W = 2 м^3$, $Delta p = 20$ МПа, $beta_p = 0.0005 1/"МПа"$

Найти: $W_2$

$display(
  beta_p = -1/W_1 dot (Delta W)/(Delta p) \
  W_2 = W_1 - Delta W \
  Delta W = beta_p dot W_1 dot Delta p \
  Delta W = 0.0005 dot 2 dot 20 = 0.02м^3 \
  W_2 = 1.98м^3
)$
== Задача 1.2

#v(1em)

Дано: \
$W = 100$ л, $beta_t = 8 dot 10^(-4) degree C^(-1)$, $t = -50...150degree C$

Найти: $Delta W$

$display(
  Delta t = t_2 - t_1 = 150 + 50 = 20degree C \
  Delta W = beta_t W Delta t = 8 dot 10^(-4) dot 100 dot 200 = 16 л
)$

== Задача 1.3

#v(1em)

Дано: \
$E = 1.33 dot 10^9 Н/м^2$, $t_1 = 20 degree C$, $t_2 = 50 degree C$, $p_"изб" = 0$, $beta_t = 8 dot 10^(-4) degree C$

Найти: $Delta p$

$display(
  beta_w = 1/E_w = 1/W (Delta W)/(Delta p) \
  (W Delta p)/E = W beta_t (t_2 - t_1) \
  Delta p = E beta_t (t_2 - t_1) = 1.33 dot 10^9 dot 8 dot 10^(-4) dot 30 = 32 "МПа" = 320 "ат" ("атмосфер технических")
)$

== Задача 1.4

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Дано: \
    $m_A = 250$ кг, $Delta h = 5$ мм, $H = 1.5$ м, $d = 80$ мм, $D = 300$ мм, $h = 1.3$ м

    Найти: $E_ж$

    $
      E = (W Delta p)/(Delta W)
    $
  ],
  [
    #figure(
      image("source-figures/sem1-1.png"),
    )
  ],
)

$display(
  Delta W = (pi d^2 Delta h)/4 = 2.52 dot 10^(-5) м^3 \
  W = (pi D^2)/4 h + (pi d^2)/4 (H - h) = 0.094 м^3 \
  Delta p = (m g)/S = (4m g)/(pi d^2) = 0.485 "МПа" \
  E = (0.094 dot 0.485)/(2.52 dot 10^(-5)) = 1804 "МПа"
)$

= Законы распределения давления

#v(1em)

#grid(
  columns: (1fr, 3fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/sem2-1.png"),
    )
  ],
  [
    $
      p_2 = p_1 + rho_ж g h
    $
  ],
)

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1em,
  align: center + horizon,
  [
    #figure(
      (
        image("source-figures/sem2-2.png"),
        image("source-figures/sem2-3.png"),
      ).join(),
    )
  ],
  [
    (Пьезометр)
    $
      p_0 = p_a => h_б = h_0, space Delta h = 0 \
      p_0 > p_а = h_и > h_б, space Delta h = p_(0 и)/(rho_ж g)
    $
  ],
)

== Задача 2.1

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Дано: \
    $h_в = 350$ мм, $h_б = 500$ мм, $rho_в = 10^3 "кг"/м^3$

    Найти: $rho_б$

    $
      p_"иб" = rho_б g h_б \
      p_"ив" = rho_в g h_в \
      p_"иб" = p_"ив" => rho_б cancel(g) h_б = rho_в cancel(g) h_в => rho_б = (rho_в h_в)/h_б = (10^3 dot 0.35)/0.5 = 700 "кг"/м^3
    $
  ],
  [
    #figure(
      image("source-figures/sem2-4.png"),
    )
  ],
)

== Задача 2.2

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Дано: \
    $D = 2$ м, $h = 300$ мм, $rho_б = 700 "кг"/м^3$

    Найти: $G_б$

    $
      G_б = rho_б W g, space W = (pi D^2)/4 dot h_б \
      p_"иб" = rho_б g h_б \
      p_"ив" = rho_в g (h_б - h) \
      rho_б h_б = rho_в h_б - rho_в h => h_б = (rho_в h)/(rho_в - rho_б) \
      G = (pi D^2)/4 dot (rho_в h)/(rho_в - rho_б) g rho_б = (3.14 dot 2^2)/4 dot (10^3 dot 0.3)/(1000 - 700) dot 700 dot 9.8 = 21.5 "кН"
    $
  ],
  [
    #figure(
      image("source-figures/sem2-5.png"),
    )
  ],
)

== Задача 2.3

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Дано: \
    $h = 368$ мм, $H = 1$ м, $rho_(H g) = 13.6 dot 10^3 "кг"/м^3$, $p_а = 736 "мм рт.ст."$

    Найти: $p_0$

    $
      p_"ив" = rho_ж g (H + h) \
      p_(и H g) = rho_(H g) g h \
      p_0 + p_"ив" = p_(и H g) + p_a => p_0 = p_(и H g) + p_a - p_"ив" = rho_(H g) g h + \ + p_а - rho_ж g (H + h) = 13.6 dot 10^3 dot 9.8 dot 368 + 736 - 1000 dot 9.8 dot (1000 + 368) = \ = 1000 "мм рт.ст."
    $
  ],
  [
    #figure(
      image("source-figures/sem2-6.png"),
    )
  ],
)

== Задача 2.4

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Дано: \
    $p_а = 770 "мм рт.ст."$, $rho_(H g)$, $g$, $H = 0.6$ м, $h = 1.36$ м

    Найти: $p_"абс"$, $p_"изб"$

    $
      p_а = p_("изб" H g) + p_2 = rho_(H g) g H + p_2 \
      p_3 = p_2 + p_"избв" = p_2 + rho_в g_в h \
      p_а - p_3 = rho_(H g) g H - rho_в g_в h => p_3 = rho_(H g) g h + rho_в g_в h - rho_(H g) g H = \ = rho_(H g) g (h_а - H) + rho_в g h = 0.362 dot 10^5 "Па" = p_"абс" \
      p_"изб" = p_а - p_"абс" = 770 - 270 = 500 "мм рт.ст."
    $
  ],
  [
    #figure(
      image("source-figures/sem2-7.png"),
    )
  ],
)

...

= Про курсовую

#v(1em)

#figure(
  image("source-figures/sem8-1.png"),
  caption: [Принципиальная схема сложного трубопровода],
)

= Уравнения Бернулли для идеальной жидкости

#v(1em)

$
  z_1 + p_1/(rho g) + v_1^2/(2g) = z_2 + p_2/(rho g) + v_2^2/(2g) = H,
$
где $z$ -- удельная потенциальная энергия жидкости, $p/(rho g)$ -- удельная энергия давления (пьезометрическая высота), $v^2/(2g)$ -- удельная кинетическая энергия (скоростной напор), $H$ -- полная удельная энергия.

Уравнение расхода
$
  Q = v S
$

== Задача 7.1

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Дано:

    $H_0 = 1$ (м) \
    $H = 1.75$ (м) \
    $p_0 = 16$ (кПа) \
    $d = 50$ (мм) \
    $rho = 800$ ($"кг"/м^3$)

    Найти: $Q$

    $
      z_0 + p_0/(rho g) + cancel(v_0^2/(2g)) = z_1 + cancel(p_1/(rho g)) + v_1^2/(2g) \
      H_0 + p_0/(rho g) = H + v_1^2/(2g) => v_1 = sqrt((H_0 - H + p_0/(rho g)) 2g) = sqrt((1 - 1.75 + 16000/(800 * 10)) 2 dot 10) = 5 (м/с)
    $

    Расход
    $
      Q = v_1 S = v_1 (pi d^2)/4 = 5 dot (3.14 dot 0.05^2)/4 = 9.8 dot 10^(-3) (м^3/с) = 9.8 (л/с)
    $

    Ответ: $9.8$ (л/с)
  ],
)

== Задача 7.2

#v(1em)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Дано:

    $D = 14$ (мм) \
    $d = 9$ (мм) \
    $H = 1.5$ (м)

    Найти: $Q$

    $
      cancel(z_1) + p_1/(rho g) + v_1^2/(2g) = p_2/(rho g) + v_1^2/(2g) \
      p_1/(rho g) - p_2/(rho g) = v_2^2/(2g) - v_1^2(2g) \
      H = (v_2^2 - v_1^2)/(2g)
    $

    Расход
    $
      Q = v S = const => v_1 S_1 = v_2 S_2 = Q \
      v_1 = Q/S_1; space v_2 = Q/S_2 \
      H = ((Q/S_2)^2 - (Q/S_1)^2)/(2g) = Q^2 (1/S_2^2 - 1/S_1^2)/(2g) => Q = sqrt((2g H)/(1/S_2^2 - 1/S_1^2)) = ... = 0.38 (л/с) = 22.74 (л/"мин")
    $

    Ответ: $22.74$ ($л/"мин"$)
  ],
)

== Задача 7.3 (Трубка-пито Прандтля)

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    Дано:

    $D = 25$ (мм) \
    $d = 5$ (мм)

    Найти: $v_0 = f(H, D, d)$

    $
      cancel(z_1) + p_1/(rho g) + v_1^2/(2g) = cancel(z_2) + p_2/(rho g) + v_2^2/(2g), space v_1 = 0 \
      p_1/(rho g) = p_2/(rho g) + v_2^2/(2g) \
      H = p_1/(rho g) - p_2/(rho g) = v_2^2/(2g) => v_2 = sqrt(2g H) \
      Q_0 = Q_2 => v_0 S_0 = v_2 S_2 => v_2 = (v_0 S_0)/S_2 = (v_0 dot (pi D^2)/4)/((pi (D - d)^2)/4) = v_0 dot D^2/(D^2 - d^2) \
      sqrt(2g H) = v_0 dot D^2/(D^2 - d^2) => v_0 = sqrt(2g H) dot (D^2 - d^2)/D^2 = 0.96sqrt(2g H)
    $

    Ответ: $v_0 = 0.96sqrt(2g H)$
  ],
)

== Задача 7.4

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    Дано:

    $p_0 = 2.8$ (ат) \
    $p_1 = 0.6$ (ат) \
    $d = 12$ (мм)

    Найти: $Q$

    Для закрытого крана
    $
      p_0/(rho g)
    $

    Для открытого крана
    $
      (p_0 - p_1)/(rho g) = v^2/(2g) => v = sqrt((Delta p dot 2 g)/(rho g)) \
      Q = v S = sqrt((2Delta p)/rho) dot (pi d^2)/4 = 2.37 dot 10^(-3) (м^3/с) = 2.37 (л/с)
    $
  ],
)

== Задача 7.?

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    Дано:

    $D = 200$ (мм) \
    $h = 230$ (мм) \
    $rho = 1.25$ ($"кг"/м^3$)

    Найти: $G$

    $
      cancel(z_1) + p_1/(rho g) + v_1^2/(2g) = cancel(z_2) + p_2/(rho g) + v_2^2/(2g), space p_1 = 0 ("в шкале избыточного давления"), space v_1 = 0 \
      p_2 = -rho_в g h \
      0 = -(rho_в g h)/(rho g) + v_2^2/(2g) => v_2 = sqrt((2rho_в g h)/rho) \
      G = Q rho g, space Q = v S = sqrt((2rho_в g h)/rho) (pi D^2)/4 \
      G = sqrt((2rho_в g h)/rho) (pi D^2)/4 rho g = 29.4 (Н/с)
    $

    Ответ: $29.4$ (Н/с)
  ],
)

= Уравнения Бернулли для реальных условий

#v(1em)

$
  z_1 + p_1/(rho g) + alpha_1 v_("ср"_1)^2/(2g) = z_2 + p_2/(rho g) + alpha_2 v_("ср"_2)^2/(2g) + sum h
$

Число Рейнольдса
$
  Re = (v dot d)/nu = (4Q)/(pi d nu) \
  Re <= 2300 => alpha = 2 \
  Re >= 4000 => alpha -> 1, space Re = 4000 => alpha = 1.13, space Re = 10^5 => alpha = 1.025
$

Потери
$
  sum h = sum h_l + sum h_mu
$

Формула Вейзмаха для местных потерь
$
  h_mu = xi_mu v_"ср"^2/(2g)
$

Формула Борда-Карно для потерь расширения
$
  h_"расш" = (v_1 - v_2)^2/(2g) \
  v_2 = 0 => h_"расш" = alpha v^2/(2g)
$

Формула Дарси для потерь по длине
$
  h_l = lambda l/d dot v^2/(2g)
$

Коэффициент местного сопротивления
$
  Re <= 2300 => lambda = 64/Re => (128nu l Q)/(pi g d^4),
$
формула Блазиуса
$
  2300 < Re <= 10^5 "и" overline(Delta) "не влияет на потери" => lambda = 0.316/root(4, Re) = 1/root(4, 100Re)
$

Формула Альтшуля
$
  lambda = 0.11 (68/Re + overline(Delta)/d)^0.25
$

И наконец
$
  Re > 10^5 => lambda = 0.11 (overline(Delta)/d)^0.25 = 0.11 root(4, overline(Delta)/d)
$

== Задача 8.1

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    Дано:

    $D = 50$ (мм) \
    $nu = 2$ ($"см"^2/с$) \
    $rho = 900$ ($"кг"/м^3$) \
    $h = 60$ (см) \
    $H = 80$ (см)

    Найти: $Q$, $p_1$

    $
      H - h = v^2/(2g) => sqrt(2g (H - h)) = 2 (м/с) \
      Re = (v d)/nu = 500 < 2300 \
      v_"ср" = 0.5v = 1 (м/с) \
      Q = v_"ср" pi d^2/4 = 1.96 dot 10^(-3) (м^3/с) = 19.6 (л/с) \
      p_1 = rho g h = 5.3 ("кПа")
    $

    Ответ: $19.6$ (л/с), $5.3$ (кПа).
  ],
)
