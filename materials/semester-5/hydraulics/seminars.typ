#import "meta.typ": conf

#show: conf.with(
  title: "Семинары по Гидравлике",
  description: "Семинары Ордоньез Лазарева А.Э. по Гидравлике",
  date: datetime(year: 2026, month: 09, day: 07),
  head: [Семинары по Гидравлике],
)

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
