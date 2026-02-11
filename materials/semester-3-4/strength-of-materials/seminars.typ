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

Построить эпюры ЭN, ЭQ, ЭM (Внутренних силовых факторов)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      (
        image("source-figures/sem8-1.png", width: 70%),
        image("source-figures/sem8-2.png", width: 30%),
        image("source-figures/sem8-3.png", width: 30%),
        image("source-figures/sem8-4.png", width: 45%),
      ).join(),
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
