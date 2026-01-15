#import "meta.typ": conf

#show: conf.with(
  titl: "Зимние лекции по математике ФМШ МАИ, 2026 год",
  desc: "Зимние лекции по математике ФМШ МАИ, 2026 год. Читали: Е.А. Пегачкова, ... ",
  datet: datetime(year: 2026, month: 1, day: 14),
  head: [Зимние лекции по математике, 2026 год],
)

#outline()
#pagebreak(weak: true)

= Лекция 1

#v(1em)

Читает Пегачкова Елена Александровна - директор ФМШ.

== Планиметрия

#v(1em)

Перед началом решения задачи стоит нарисовать то, что описывается в задаче. Лучше всего соблюдать данные пропорции/длины/углы. Составляется план решения. В самом решении следует писать пояснения (по свойству, теореме, и т.д.). При решении могут понадобиться дополнительные построения.

=== Дополнительные построения

#v(1em)

#grid(
  columns: (3fr, 1fr),
  [
    1. Серединный перпендикуляр
    Можно получить равнобедренный треугольник
  ],
  [
    #figure(
      image("source-figures/2026-1.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    2. Биссектриса угла
    Аналогично получаем равнобедренный треугольник
  ],
  [
    #figure(
      image("source-figures/2026-2.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    3. Окружность
    Построение равнобедренного треугольника с вершиной в центре
  ],
  [
    #figure(
      image("source-figures/2026-3.png", width: 70%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    4. Ромб
    Построен двумя равными равнобедренными треугольниками
  ],
  [
    #figure(
      image("source-figures/2026-4.png", width: 60%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    5. Касательная к окружности
    Отрезок, соединающий центр окружности и точку касания прямой, перпендикулярен касательной к окружности
  ],
  [
    #figure(
      image("source-figures/2026-5.png", width: 60%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    6. Пересечение двух окружностей
    $O_1 O_2 perp A_1 A_2$
  ],
  [
    #figure(
      image("source-figures/2026-6.png", width: 80%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    7. Касание окружностей внешним и внутренним образом
    $O_1, O_2 "и" A$ лежат на одной прямой
  ],
  [
    #figure(
      image("source-figures/2026-7.png"),
    )
  ],
)

#grid(
  columns: (2fr, 1fr),
  [
    8. Две окружности
  ],
  [
    #figure(
      image("source-figures/2026-8.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    9. Удвоение медианы
    $A B C D$ - параллелограмм
  ],
  [
    #figure(
      image("source-figures/2026-9.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    10. Параллелограмм внутри трапеции
  ],
  [
    #figure(
      image("source-figures/2026-10.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    11. Параллелограмм вне трапеции
  ],
  [
    #figure(
      image("source-figures/2026-11.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    12. Построение треугольника из трапеции
  ],
  [
    #figure(
      image("source-figures/2026-12.png", width: 60%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    13. Равные треугольники в трапеции
  ],
  [
    #figure(
      image("source-figures/2026-13.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    14. Высоты трапеции
  ],
  [
    #figure(
      image("source-figures/2026-14.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    15. Параллелограмм в выпуклом четырехугольнике
    $К L M N$ - параллелограмм
  ],
  [
    #figure(
      image("source-figures/2026-15.png"),
    )
  ],
)

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    16. Равнобедренный треугольник на стороне произвольного треугольника
    $B L$ - биссектриса, $A D parallel B L$
  ],
  [
    #figure(
      image("source-figures/2026-16.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    17. Угол, опирающийся на диаметр окружности
  ],
  [
    #figure(
      image("source-figures/2026-17.png", width: 90%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    18. Углы, опирающийся на одни и те же дуги
  ],
  [
    #figure(
      image("source-figures/2026-18.png", width: 70%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    19. Вписанные углы, опирающийся на противоположные дуги
  ],
  [
    #figure(
      image("source-figures/2026-19.png", width: 70%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    20. Перпендикуляр в точке пересечения биссектрис углов трапеции/параллелограмма
  ],
  [
    #figure(
      image("source-figures/2026-20.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  column-gutter: 1em,
  [
    21. Равнобедренный треугольник с основанием в биссектрисе трапеции/параллелограмма
  ],
  [
    #figure(
      image("source-figures/2026-21.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    22. Окружность, вписанная в углы трапеции/параллелограмма
  ],
  [
    #figure(
      image("source-figures/2026-22.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    23. Ортоцентр треугольника
  ],
  [
    #figure(
      image("source-figures/2026-23.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    24. Точка пересечения биссектрис треугольника
  ],
  [
    #figure(
      image("source-figures/2026-24.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    25. Углы между хордами и секущими окружности
  ],
  [
    #figure(
      image("source-figures/2026-25.png"),
    )
  ],
)

#grid(
  columns: (2fr, 1fr),
  [
    26. Треуголники в касающихся окружностях
    $A B parallel C D$
  ],
  [
    #figure(
      image("source-figures/2026-26.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    27. То же, что и 25., только для большего количества окружностей
    $A B parallel C D$
  ],
  [
    #figure(
      image("source-figures/2026-27.png", width: 75%),
    )
  ],
)

=== Основные метрические соотношения

#v(1em)

1. Сумма углов n-угольника: #rect[$ 180 degree (n - 2) $]

#grid(
  columns: (1fr, 1fr),
  align: horizon,
  [
    2. #figure(
        image("source-figures/2026-28.png", width: 75%),
      )
  ],
  [
    #rect[$ d_1^2 + d_2^2 = 2a^2 + 2b^2 $]
  ],
)

#grid(
  columns: (1fr, 1fr),
  [
    3. Теорема синусов
    #figure(
      image("source-figures/2026-29.png", width: 35%),
    )
  ],
  [
    #rect[$ a/sin(alpha) = b/sin(beta) = c/sin(gamma) = 2R $]
  ],
)

4. Теорема косинусов: #rect[$ c^2 = a^2 + b^2 - 2 a b cos(gamma) $]

=== Площадь треугольника

#v(1em)

+ $display(S_(triangle) = 1/2 a h_a)$

+ $display(S_(triangle) = 1/2 a b sin(gamma))$

+ $display(S_(triangle) = sqrt(p (p - a) (p - b) (p - c)) "- формула Герона, где" p = (a + b + c)/2)$

+ $display(S_(triangle) = p r\, r "- радиус вписанной окружности")$

+ $display(S_(triangle) = (a b c)/(4R)\, R "- радиус описанной окружности")$

+ $display(S_(triangle) = (b + c - a)/2 dot r_a)$

+ $display(S_(triangle) = sqrt(r r_a r_b r_c))$

$r_a, r_b "и" r_c$ - радиусы вневписанных окружности (смотрите @вневписанный)

#figure(
  image("source-figures/2026-30.png", width: 40%),
  caption: [],
) <вневписанный>

=== Теоремы

==== Теорема Менелая

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    #rect[$ (A C_1)/(C_1 B) dot (B A_1)/(A_1 C) dot (C B_1)/(B_1 A) = 1 $]
  ],
  [
    #figure(
      image("source-figures/2026-31.png", width: 80%),
    )
  ],
)

Доказательство:

#grid(
  columns: (1fr, 1fr),
  [
    Воспользуемся теоремой Фалеса #rect[$ (A B_1)/(A C_1) = (A B_2)/(A C_2) $]
  ],
  [
    #figure(
      image("source-figures/2026-32.png", width: 60%),
    )
  ],
)

Дополнительное построение -- #text(red)[$B B_2 parallel A_1 B_1$]

$(A_1 B)/(A_1 C) = (B_1 B_2)/(B_1 C) => B_1 B_2 = (A_1 B dot B_1 C)/(A_1 C) \
(C_1 B)/(C_1 A) = (B_1 B_2)/(A B_1) => B_1 B_2 = (C_1 B dot A B_1)/(C_1 A) \
(A_1 B dot B_1 C)/(A_1 C) = (C_1 B dot A B_1)/(C_1 A) \
(A C_1)/(C_1 B) dot (B A_1)/(A_1 C) dot (C B_1)/(B_1 A) = 1. triangle.filled$

==== Теорема Чевы

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    #rect[$ (A C_1)/(C_1 B) dot (B A_1)/(A_1 C) dot (C B_1)/(B_1 A) = 1 $]
  ],
  [
    #figure(
      image("source-figures/2026-33.png", width: 80%),
    )
  ],
)

Доказательство

Дополнительные построения: #text(red)[$A_2 C_1 parallel A_1 A$], #text(red)[$C_1 B_2 parallel B B_1$]

Найдём $C O bold(colon) O C_1$

$C_1 A_2: (C_1 O)/(O C) &= (A_2 A_1)/(A_1 C) \
C_1 B_2: (C_1 O)/(O C) &= (B_1 B_2)/(C B_1) \
A_1 A_2 "-" ?: (A_1 A_2)/(A C_1) = (A_1 B)/(A B) => A_1 A_2 = (A C_1 dot A_1 B)/(A B) \
B_1 B_2 "-" ?: (B_1 B_2)/(C_1 B) = (A B_1)/(A B) => B_1 B_2 = (A B_1 dot C_1 B)/(A B)$

$(A_1 A_2)/(A_1 C) = (B_1 B_2)/(C B_1) \
(A C_1 dot A_1 B)/(cancel(A B) dot A_1 C) = (A B_1 dot C_1 B)/(cancel(A B) dot C B_1) => (A C_1)/(C_1 B) dot (B A_1)/(A_1 C) dot (C B_1)/(B_1 A) = 1. triangle.filled$

==== Теорема Ван-Обеля

#v(1em)

$ (C O)/(O C_1) = (C A_1)/(A_1 B) + (C B_1)/(B_1 A) $

==== Теорема Стюарта

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    #figure(
      image("source-figures/2026-34.png", width: 70%),
    )
  ],
  [
    #rect[$ p^2 = a^2 dot x/(x + y) + b^2 dot y/(x + y) - x y $]
  ],
)

=== Задача 1

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    Найти:
    + Медиану
    + Высоту
    + Биссектрису
  ],
  [
    #figure(
      image("source-figures/2026-35.png", width: 35%),
      caption: [Рисунок для нахождения медианы],
    )
  ],
)

+ $display((2m_a)^2 + a^2 = 2b^2 + 2c^2 => m_a = 1/2 sqrt(2b^2 + 2c^2 - a^2))$

+ $display(h_a = 2/a sqrt(p (p - a) (p - b) (p - c)))$

+ $display(
    cases(
      a = b x + c x => x = a/(b + c),
      b^2 x^2 = b^2 + l_a^2 - 2b l_a cos(alpha) |dot c,
      c^2 x^2 = c^2 + l_a^2 - 2c l_a cos(alpha) |dot b,
    ) => b^2 c x^2 - b c^2 x^2 = b^2 c + l_a^2 c - c^2 b - l_a^2 b \
    b c x^2 (b - c) = b c (b - c) + l_a^2 (c - b) |":" (b - c) != 0 \
    b c x^2 = b c - l_a^2 \
    l_a^2 = b c (-x^2 + 1) \
    #rect[$ l_a^2 = b c (1 - a^2/(b + c)^2) $] \
    a + b + c = 2p \
    l_a^2 = b c (((b + c - a)(b + c + a))/(b + c)^2) \
    #rect[$ l_a = (2sqrt(b c p (p - a)))/(b + c) $]
  )$

==== Доказательство свойства биссектрисы треугольника

#v(1em)

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/2026-36.png"),
    )
  ],
  [
    $display(
      cases(
        reverse: #true,
        delim: "|",
        S_(triangle A B L) = 1/2 B L dot h,
        S_(triangle A C L) = 1/2 C L dot h,
      ) => S_(triangle A B L)/S_(triangle A C L) = (B L)/(C L)
    ) \
    display(
      cases(
        reverse: #true,
        delim: "|",
        S_(triangle A B L) = 1/2 A L dot A B sin(alpha),
        S_(triangle A C L) = 1/2 A L dot A C sin(alpha),
      ) => S_(triangle A B L)/S_(triangle A C L) = (A B)/(A C) = (B L)/(C L)
    ) \
    #rect[$ (B L)/(C L) = (A B)/(A C) "или" (A C)/(C L) = (A B)/(B L) $]$
  ],
)

#figure(
  image("source-figures/2026-37.png", width: 25%),
)
$ m <= l <= h $

=== Формула Эйлера

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    #figure(
      image("source-figures/2026-38.png"),
    )
  ],
  [
    $O_1$ - центр вписанной окружности \
    $O_2$ - центр описанной окружности

    + Доказать, что $triangle B O_1 M$ и $triangle C O_1 M$ - равнобедренные
    + Формула Эйлера $O_1 O_2 = sqrt(R^2 - 2 r R)$
  ],
)

1. $angle B O_1 M$ - внешний $triangle A B O_1$

  $angle B O_1 M = alpha/2 + beta/2$

  вписанные углы $angle M B C$ и $angle M A C$ опираютс на общую дугу

  $angle O_1 B M = angle O_1 B C + angle M B C = angle O_1 B D + angle M A C = alpha/2 + beta/2 => angle B O_1 M = angle O_1 B M => triangle B O_1 M$ - равнобедренный

==== Вспомним некоторые свойства...

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    #figure(
      image("source-figures/2026-39.png", width: 25%),
    )
    $ a b = c d $
  ],
  [
    #figure(
      image("source-figures/2026-40.png", width: 30%),
    )
    $ M L dot M K = M N dot M P $
  ],
)

2. По свойству секущих: $A O_1 dot O_1 M = (R + O_1 O_2) dot (R - O_1 O_2) = R^2 - O_1 O_2^2$

  $O_1 P = r$

  из $triangle A O_1 P: A O_1 = (O_1 P)/(sin angle O_1 A P) = r/(sin alpha/2)$

  $triangle A B M$, теорема синусов: $(B M)/(sin alpha/2) = 2R" "(B M = O_1 M)$

  $O_1 M = 2R sin alpha/2$

  из вышеприведенного:

  $r/(sin alpha/2) dot 2R dot sin alpha/2 = R^2 - O_1 O_2^2 => 2R r = R^2 - O_1 O_2^2 => O_1 O_2^2 = R^2 - 2R r. triangle.filled$

=== Задача 2

#v(1em)

#grid(
  columns: (1fr, 2fr),
  [
    #figure(
      image("source-figures/2026-41.png"),
    )
  ],
  [
    Дано: \
    $triangle A B C$ \
    $h_a, h_b, h_c$ - высоты \
    точка $P$ внутри $triangle A B C$ \
    $d_a, d_b, d_c$ - расстояния от точки $P$ до сторон

    Найти соотношение между высотами и этими расстояниями
  ],
)

$S_(triangle A B C) = 1/2 a h_a = 1/2 b h_b = 1/2 c h_c = S \
S_(triangle A B C) = S_(triangle A P C) + S_(triangle B P C) + S_(triangle A P B) = 1/2 (a d_a + b d_b + c d_c) = S |":" S \
display((a d_a)/underbrace(2S, a h_a) + (b d_b)/underbrace(2S, b h_b) + (c d_c)/underbrace(2S, c h_c)) = 1$

$ d_a/h_a + d_b/h_b + d_c/h_c = 1 $

Если P - центр вписанной окружности: $d_a = d_b = d_c = r => 1/h_a + 1/h_b + 1/h_c = 1/r$
