#import "meta.typ": conf

#show: conf.with(
  titl: "Семинары по Сопротивлению материалов (4 семестр)",
  desc: "Семинары Феоктисовой Е.С. по Сопротивлению материалов",
  datet: datetime(year: 2026, month: 2, day: 10),
  head: [Семинары по Сопротивлению материалов],
)

#outline()
#pagebreak(weak: true)

= Задача 1

#v(1em)

Построить эпюры ЭN, ЭQ, ЭM (Внутренних силовых факторов) следующих плоских рам

== Прямолинейная рама

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/sem8-1.png", width: 70%),
    )
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 1em,
      [
        #figure(
          image("source-figures/sem8-2.png", width: 55%),
        )
      ],
      [
        #figure(
          image("source-figures/sem8-3.png", width: 55%),
        )
      ],
    )
    #figure(
      image("source-figures/sem8-4.png", width: 45%),
    )
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 1em,
      [
        #figure(
          image("source-figures/sem8-5.png"),
        )
      ],
      [
        #figure(
          image("source-figures/sem8-6.png"),
        )
      ],
    )
  ],
  [
    За счёт врезанного шарнира можно записать уравнения статики относительно него.

    + Определение реакций

      $sum M_((3))^"справа" = 0 \
      R_5^y dot a + R_5^x dot a - q a dot 1/2 a = 0$

      $sum M_((3))^"слева" = 0 \
      1/2 q a^2 + 2q a dot a - R_0^x dot 2a - R_0^y dot a = 0$

      $sum M_((0)) = 0 \
      -2q a dot a + 1/2 q a^2 - 3/2 q a^2 + R_5^y dot 2a - R_5^x dot a = 0$

      $3R_5^y - 7/2 q a = 0 => R_5^y = 7/6 q a => R_5^x = -2/3 q a$

      $sum x = 0 \
      -R_0^x + 2q a + R_5^x = 0 => R_0^x = 4/3 q a$

      $5/2 q a - 8/3 q a - R_0^y = 0 => R_0^y = -1/6 q a$

      Проверка
      $sum y = 0: R_0^y - q a + R_5^y = 0$

    + Метод сечений

      0-1:

      $sum x = 0 \
      Q_01 = 4/3 q a$

      $sum y = 0 \
      N_01 = 1/6 q a$

      $sum M = 0 \
      M_01 = 4/3 q a x$

      1-2:

      $Q_12 = -2/3 q a$

      $N_12 = 1/6 q a$

      $M_12 = 4/3 q (a + x) - 2q a x = 4/3 q a - 2/3 q a x$

      2-3:

      $N_23 = -2q a + 4/3 q a = -2/3 q a$

      $Q_23 = -1/6 q a$

      $M_23 = -1/6 q a x + 4/3 q a dot 2a - 2q a dot a - 1/2 q a^2$

      #colbreak()

      5-4:

      $N_54 = -2/3 q a \
      Q_54 = -7/6 q a + q x \
      M_54 = 7/6 q a x - q x dot x/2$

      4-3:

      $N_43 = -7/6 q a + q a = -1/6 q a \
      Q_43 = 2/3 q a \
      M_43 = 7/6 q a dot a - 2/3 q a x - q a dot a/2$
  ],
)

#figure(
  image("source-figures/sem8-7.png"),
  caption: [Искомые эпюры],
)

В рисунке к задаче я не поменял направление реакций. В решении курсовой не забудьте перечеркнуть стрелку и нарисовать в направлении, для которого реакция будет положительна.

== Криволинейная рама

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/sem9-1.png", width: 70%),
    )
    #grid(
      columns: (1fr, 1fr),
      column-gutter: 1em,
      [
        #figure(
          image("source-figures/sem9-2.png", width: 45%),
        )
      ],
      [
        #figure(
          image("source-figures/sem9-3.png", width: 45%),
        )
      ],
    )
    #figure(
      (
        image("source-figures/sem9-4.png", width: 35%),
        image("source-figures/sem9-5.png", width: 60%),
        image("source-figures/sem9-6.png", width: 60%),
      ).join(),
    )
  ],
  [
    Здесь присутствует лишь жёсткая заделка, поэтому находить реакции совершенно необязательно
    #colbreak()
    0-1:

    $M_01 = -q x dot x/2 = (-q x^2)/2 \
    N_01 = 0 \
    Q_01 = q x$

    1-2:

    $M_12 = -q a (a/2 + x) \
    N_12 = 0 \
    Q_12 = q a$

    2-3:

    $N_23 = -q a sin phi \
    Q_23 = q a cos phi \
    M_23 = -q a (3/2 a + a sin phi) + 1/2 q a^2$

    3-4:

    $N_34 = -q a cos phi - 2q a sin phi \
    Q_34 = -q a sin phi + 2q a cos phi \
    M_34 = 1/2 q a^2 - q a (3/2 a + a cos phi) - 2q a sin phi$

    4-5:

    $N_45 = -2q a \
    Q_45 = -q a \
    M_45 = 1/2 q a^2 - 2q a^2 - q a (3/2 a - x)$
  ],
)

#figure(
  image("source-figures/sem9-7.png"),
  caption: [Искомые эпюры],
)

= Задача 2

#v(1em)

На этот раз будет статически неопределимая рама

Степень статической неопределимости $ sum k dot j - n - w, $ где $k$ - количество опор, $j$ - реакции, которые даёт каждая отдельная опора, $n$ - количество врезанных шарниров, $w$ - количество уравнений статики в системе.

Каноническое уравнение перемещений
$
  cases(
    delta_11 X_1 + delta_12 X_2 + ... + delta_(1 m) X_m + delta_(1 p) = 0,
    delta_21 X_1 + delta_22 X_2 + ... + delta_(2 m) X_m + delta_(2 p) = 0,
    ...,
    delta_(n 1) X_1 + delta_(n 2) X_2 + ... + delta_(n m) X_m + delta_(n p) = 0,
  )
$

== Прямолинейная рама#footnote[Эпюры единичных реакций и силовую эпюру строить отдельно. Рисовать её вместе с силами не надо]

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      (
        grid(
          columns: (1fr, 1fr),
          column-gutter: 1em,
          [
            #image("source-figures/sem10-1.png")
          ],
          [
            #image("source-figures/sem10-2.png")
          ],
        ),
        grid(
          columns: (1fr, 1fr),
          column-gutter: 1em,
          [
            #image("source-figures/sem10-3.png")
          ],
          [
            #image("source-figures/sem10-4.png")
          ],
        ),
        grid(
          columns: (1fr, 1fr),
          column-gutter: 1em,
          [
            #image("source-figures/sem10-5.png")
          ],
          [
            #image("source-figures/sem10-6.png")
          ],
        ),
        grid(
          columns: (1fr, 1fr),
          column-gutter: 1em,
          [
            #image("source-figures/sem10-7.png")
          ],
          [
            #image("source-figures/sem10-8.png")
          ],
        ),
      ).join(),
    )
  ],
  [
    СНО: $2 dot 2 + 1 dot 1 - 3 = 2$

    $display(
      cases(
        delta_11 X_1 + delta_12 X_2 + delta_(1 p) = 0,
        delta_21 X_1 + delta_22 X_2 + delta_(2 p) = 0,
      )
    )$

    При этом $delta_12 = delta_21$

    Уберём одну из неподвижных опор, тогда ЭM по принципу суперпозиции:

    $Э M^sum = X_1 dot Э M^1 + X_2 dot Э M^2 \
    Э M^sum dot Э M_"нов"^1 = 0$

    1 случай: $X_1 = 1; X_2 = q = 0$

    $R_5^x = 1; R_5^y = R_4^y = 0 \
    sum M_((4)) = 0: l dot 1 - l dot 1 + R_5^y dot l = 0$

    (В курсовой расписать уравнения реакций)

    2 случай: $X_2 = 1; X_1 = q = 0$

    $R_5^x = 1; R_5^y = 1; R_4^y = 2$

    3 случай: $X_1 = X_2 = 0; q != 0$

    $R_5^x = 0; R_4^y = 0; R_5^y = q l$

    Значения $delta$ берутся из правила Верещагина. Для этого поочередно перемножаются эпюры $M^k$ и $M^p$. Соответственно $delta_(i j)$ - это результат перемножения эпюр $M^i$ и $M^j$; $delta_(i p)$ - это результат перемножения эпюр $M^i$ и $M^p$.

    $display(
      delta_11 = 1/(E I) sum_(k=1)^n integral_l_k (M^1)^2 dif x \
      cases(
        reverse: #true,
        Omega = 1/2 dot 2 l dot 2l = 2l^2,
        h = 2/3 dot 2l = 4/3 l,
      ) Omega h = 8/3 l^3 \
      cases(
        reverse: #true,
        Omega = 4l^2,
        h = 2l,
      ) Omega h = 8l^3 \
      cases(
        reverse: #true,
        Omega = 2l^2,
        h = 4/3 l,
      ) Omega h = 8/3 l^3 \
      delta_11 = ((16/3 + 8)l^3)/(E I)
    )$
  ],
)

$display(
  delta_12 = delta_21 = 1/(E I) sum_(k=1)^n integral_l_k M_k^1 dot M_k^2 dif x \
  cases(
    reverse: #true,
    Omega_2 = 1/2 dot 2l dot 2l = 2l^2,
    h_1 = 2l,
  ) -4l^3 \
  cases(
    reverse: #true,
    Omega_1 = 3/2 l^2,
    h_2 = 2l,
  ) -3l^3 \
  delta_12 = (-4l^3 - 3l^3)/(E I)
)$

$display(
  delta_22 = ... \
  Omega h = 8/3 l^3 \
  Omega h = 4l^3 \
  cases(
    reverse: #true,
    Omega = 1/2 l dot 2l = l^2,
    h = 2/3 dot 2l,
  ) 4/3 l^3 \
  delta_22 = (8l^3)/(E I)
)$

$display(delta_(1 p) = -(3/2 q l^3 dot 2l)/(E I))$

$display(delta_(2 p) = (2 dot 2/3) (q l^4)/(E I))$

$display(
  cases(
    40/3 l^3/(E I) X_1 - 7 l^3/(E I) X_2 - (3q l^4)/(E I) = 0,
    -7 l^3/(E I) X_1 + 8 l^3/(E I) X_2 + 4/3 (q l^4)/(E I) = 0,
  ) \
  cases(
    40/3 X_1 - 7X_2 - 3q l = 0,
    -7X_1 + 8X_2 + 4/3 q l = 0,
  )
)$
