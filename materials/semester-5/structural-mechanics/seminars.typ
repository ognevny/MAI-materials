#import "meta.typ": conf
#import "@preview/physica:0.9.8": dd, dv, pdv

#show: conf.with(
  title: "Семинары по Строительной механике",
  description: "Семинары Волкова А.В. по Строительной механике",
  date: datetime(year: 2026, month: 11, day: 12),
  head: [Семинары по Строительной механике],
)

= Стержневые системы

#v(1em)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      (
        image("source-figures/sem1-1.png"),
        image("source-figures/sem1-2.png"),
      ).join(),
    )
  ],
  [
    Степени свободы системы
    $
      W = 2У + 3Д - С = 2 dot 6 + 0 - 12 = 0
    $

    Нахождение усилий в стержнях
    $
      N_23 = 0, space N_21 = 0
    $

    Для остальных усилий найдем реакции в опорах
    $
      sum x = P - R_(1x) = 0 => R_(1x) = P \
      sum y = -R_(1y) - R_(5y) = 0 => R_(1y) = -R_(5y) \
      sum M_1 = R_(5y) 2a + P a = 0 => R_(5y) = -P/2 => R_(1y) = P/2
    $

    Найдем остальные усилия
    $
      N_43 = P, space N_45 = 0, \
      N_63 = 0, space N_61 = N_65, \
      N_53 cos 45degree + P/2 = 0 => N_53 = -P/2 dot sqrt(2) = -P/sqrt(2), \
      -N_53 cos 45degree - N_65 = 0 => \ => N_65 = -N_53 cos 45degree = P/2 => N_61 = P/2 \
      N_31 cos 45degree + N_53 cos 45degree = 0 => N_31 = -N_53 = P/sqrt(2)
    $
  ],
)

Альтернативно можно вырезать часть с узлами 1 и 2 и получить те же результаты.

Найдем потенциальную энергию деформации
$
  U & = 1/(2E A) ((N_43^2 + N_16^2 + N_65^2) a + (N_13^2 + N_35^2) a sqrt(2)) = a/(2E A) (P^2 + P^2/4 + P^2/4 + (P^2/2 + P^2/2) sqrt(2)) = \
  & = (P^2 a)/(2E A) (3/2 + sqrt(2)) => pdv(U, P) = v = (P a)/(E A) (3/2 + sqrt(2))
$

Воспользуемся интегралом Мора для нахождения того же перемещения
$
  v = sum (N_i overline(N)_i)/(E A) l_i = ... = (P a)/(E A) (3/2 + sqrt(2))
$

Найдем температурную деформацию
$
  sigma = N/A = E epsilon => N^T = E A epsilon^T = E A alpha Delta T \
  v^T = v + (N_i^T overline(N)_i)/(E A) l = (P a)/(E A) (3/2 + sqrt(2)) + (E A alpha Delta T dot P)/(E A) dot a = (P a)/(E A) (3/2 + sqrt(2)) + alpha Delta T a
$

= Деформации

#v(1em)

#grid(
  columns: (1fr, 2.5fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/sem1-3.png"),
    )
  ],
  [
    $
      P pi R^2 = sigma dot 2pi R t => sigma = (P pi R^2)/(2pi R t) = (P R)/(2t)
    $
  ],
)

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1em,
  align: horizon,
  [
    #figure(
      image("source-figures/sem1-4.png"),
    )
  ],
  [
    $
      sigma_L = (p R)/(2t) \
      p L dot 2R = sigma dot 2L t => sigma = (P L dot 2R)/(2L t) = (P R)/t
    $
  ],
)

#grid(
  columns: (1fr, 1fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/sem1-5.png"),
    )
  ],
  [
    Материал лонжеронов -- сталь, $E = 210$ ГПа, $nu = 0.3$.

    Деформации в тензодатчиках ($alpha = 0$, $beta = 45degree$, $gamma = 90degree$)
    $
      epsilon_A = epsilon_x cos^2 alpha + epsilon_y sin^2 alpha + gamma_(x y) cos alpha sin alpha => epsilon_x = epsilon_A \
      epsilon_B = epsilon_x cos^2 beta + epsilon_y sin^2 beta + gamma_(x y) cos beta sin beta \
      epsilon_C = epsilon_x cos^2 gamma + epsilon_y sin^2 gamma + gamma_(x y) cos gamma sin gamma => epsilon_y = epsilon_C
    $

    Далее используется закон Гука в трехмерной форме для нахождения напряжений.
  ],
)
