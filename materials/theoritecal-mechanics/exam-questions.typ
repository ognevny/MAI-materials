#import "meta.typ": conf

#show: conf.with(
  titl: "Ответы на вопросы к экзамену по Теоретической механике",
  desc: "Ответы на вопросы к экзамену по Теоретической механике у Зародова В.К.",
  datet: datetime(year: 2026, month: 1, day: 13),
  head: [Вопросы к экзамену по Теоретической механике],
)

#let ov(var) = $overline(#var)$
#let delimsys = ("{", "|")

Ответы являются выдержками из моего #link("https://github.com/ognevny/MAI-materials/releases/download/latest/Lectures_of_Theoritecal-mechanics.pdf")[конспекта]

#outline()
#pagebreak(weak: true)

// часть вопросов пропущена, приходится так соблюдать нумерацию
#set heading(numbering: (n, ..) => {
  if n >= 30 { return str(n + 5) + "." }
  if n >= 29 { return str(n + 4) + "." }
  if n >= 28 { return str(n + 3) + "." }
  if n >= 27 { return str(n + 2) + "." }
  if n >= 25 { return str(n + 1) + "." }
  return str(n) + "."
})

= Аксиомы динамики

#v(1em)

1. I закон Ньютона: существуют системы отсчёта, по отношению к которым материальная точка без действия сил либо покоится, либо движется равномерно и прямолинейно. Такая система отсчёта называется инерциальной (ИСО).

#grid(
  columns: (3fr, 1fr),
  [
    2. II закон Ньютона: в ИСО при действии на материальную точку силы она получает ускорение, направленное по линии действия силы и по величине ей пропорциональная.
    $ W ~ F, ov(W) = 1/m ov(F) $
  ],
  [
    #figure(
      image("source-figures/lect0-1-1.png"),
    )
  ],
)

3. III закон Ньютона: 2 объекта взаимодействуют силами, имеющими общую линию действия, равные модули и противоположные направления.

4. Аксиома независимости действия сил: если в ИСО на материальную точку действуют несколько сил, то она получает ускорение, равное векторной сумме ускорений, получаемых при действии каждой силы по отдельности.

$
  ov(W) = ov(W)_1 + ov(W)_2 + ... + ov(W)_N = 1/m ov(F)_1 + 1/m ov(F)_2 + ... + 1/m ov(F)_N = 1/m (ov(F)_1 + ov(F)_2 + ... + ov(F)_N)
$

$ m ov(W) = sum_(i=1)^N ov(F) $

5. Принцип освобождаемости: несвободный объект можно считать свободным, заменив действие связей силами, называемыми реакциями связи.

$ov(W)_a = ov(W)_r + ov(W)_e + ov(W)_c \
m ov(W)_a = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k) \
m (ov(W)_r + ov(W)_e + ov(W)_c) = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k) \
m ov(W)_r = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k - ov(W)_e - ov(W)_c)$

= Основное уравнение динамики точки при абсолютном и относительном движениях. Уравнения относительного равновесия

#v(1em)

Абсолютное движение точки: $ m ov(W)_r = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^N ov(R)_k), $ где $ov(F)_j$ - активная сила, не зависящая от связей; $ov(R)_k$ - реакция связей. В случае отсутствия реакции связей точку называют свободной.

Для относительного движения точки вводятся силы инерции: $ ov(Phi)_e = -m ov(W)_e, ov(Phi)_c = -m ov(W)_c, $ где $ov(Phi)_e$ - переносная сила инерции; $ov(Phi)_c$ - Кориолисова сила инерции.

$ m ov(W)_r = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^N ov(R)_k + ov(Phi)_e + ov(Phi)_c) $

Вывод уравнения относительного равновесия

$ov(W)_c &= ov(W)_0 + [ov(epsilon); ov(rho)] + [ov(omega); [ov(omega); ov(rho)]] \
ov(W)_c &= -2m [ov(omega)_e; ov(V)_r]$

$ov(omega) = 0, ov(epsilon) = 0 => ov(Phi)_e = -m ov(W)_0, underline(ov(Phi)_c = 0)$

$underline(ov(V)_r = 0\, ov(W)_r = 0)$

$ sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k + ov(Phi)_e = 0 $

= Понятие механической системы. Внешние и внутренние силы. Центр масс. Скорость и ускорение центра масс

#v(1em)

Механической системой (МС) называется совокупность материальных точек и твердых тел в рамках данной задачи.

Внутренними силами называются силы взаимодействия между объектами данной МС, обозначается как $ov(F)^((i))$. Сумма внутренних сил МС равна 0.

Внешними силами называются силы действия на объекты МС со стороны объектов, не включенных в данную МС, обозначаются как $ov(F)^((e))$.

Центром масс МС называется точка (C) такая, что её радиус-вектор определяется по формулам: $ ov(r)_C = (display(sum_j) m_j ov(r)_j)/(display(sum_j) m_j) "или" ov(r)_C = (display(sum_j) ov(P)_j ov(r)_j)/(display(sum_j) ov(P)_j), $ где $ov(P)_j = m_j ov(g)$.

Скорость центра масс:
$
  ov(V)_C = (dif ov(r)_C)/(dif t) = display(dif/(dif t) (sum_j m_j ov(r)_j)) / display(sum_j m_j) = display(sum_j m_j (dif ov(r)_j)/(dif t))/display(sum_j m_j) = (display(sum_j) m_j ov(V)_j)/M
$

Ускорение центра масс:
$ ov(W)_C = (dif ov(V)_C) / (dif t) = (display(sum_j) m_j ov(W)_j)/M $

= Количество движения МС. Импульс силы. Теоремы об изменении количества движения МС в дифференциальной и интегральной формах

#v(1em)

Количеством движения точки называется вектор, равный произведению массы точки на её скорость $ ov(q)_j = m_j ov(V)_j $

Количеством движения МС называется векторная сумма количеств движений точек этой МС $ ov(Q) = display(sum_j) ov(q)_j = display(sum_j) m_j ov(V)_j $ $ ov(V)_C = (display(sum_j) m_j ov(V)_j)/M => ov(Q) = display(sum_j) m_j ov(V)_j $

Импульс силы - векторная физическая величина, мера воздействия силы на тело за заданный промежуток времени в поступательном движении: $ ov(S) = integral_(t_1)^(t_2) ov(F) dif t = ov(F) Delta t $

*Теорема об изменении вектора количества движения МС в дифференциальной форме*

$ dif/(dif t) ov(Q) = display(sum_j) ov(F)_j^((e)) $

$display((dif ov(Q))/(dif t) = dif/(dif t) (sum_j m_j ov(V)_j) = sum_j dif/(dif t) (m_j ov(V)_j) = sum_j m_j (dif ov(V)_j)/(dif t) = sum_j m_j ov(W)_j = sum_j ov(F)_j^((e)) + sum_j ov(F)_j^((i)) = \ = sum_j ov(F)_j^((e)))$

*Теорема об изменении вектора количества движения МС в интегральной форме*

Изменение вектора количества движения МС за время $tau$ равно векторной сумме импульсов внешних сил за это время

$ Delta ov(Q) = ov(Q) (tau) - ov(Q) (0) = sum_j ov(S)_(tau) (ov(F)_j^((e))) $

$(dif ov(Q))/(dif t) = display(sum_j ov(F)_j^((e))) \
dif ov(Q) = display((sum_j ov(F)_j^((e))) dif t) \
dif ov(Q) = display(sum_j (ov(F)_j^((e)) dif t) => integral_0^(tau) dif ov(Q) = integral_0^(tau) sum_j (F_j^((e)) dif t)) => display(ov(Q) (tau) - ov(Q) (0) = sum_j ov(S)_(tau) (ov(F)_j^((e))))$

= Теорема о движении центра масс МС. Следствия

#v(1em)

$ M ov(W)_C = sum_j ov(F)_j^((e)) $

Центр масс движется как материальная точка в предположении, что в нём сосредоточена масса МС, и к ней приложены все внешние силы.

Если $display(sum_j ov(F)_j^((e)) = 0)$, то центр масс покоится, либо движется равномерно и прямолинейно.

Если $display(F_(j x)^((e)) = 0)$, то $W_(c x) = 0 => V_(c x) = "const"$, при этом при $t_0 = 0$ $V_(c x_0) = 0$.

Внутренние силы не влияют непосредственно на движение центра масс

= Кинетический момент МС относительно центра и оси. Теоремы об изменении кинетического момента МС в движении относительно неподвижного центра и неподвижной оси

#v(1em)

Моментом количества движения точки относительно центра O называется векторное произведение радиус-вектора на её вектор количества движения.
#grid(
  columns: (1fr, 1fr),
  [
    #rect[$ ov(K)_(j O) = [ov(r)_j, ov(q)_j] = [ov(r)_j, m_j ov(V)_j] $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-5.png", width: 30%),
    )
  ]
)
Кинетическим моментом МС относительно центра называется векторная сумма $ov(K)_(j O)$.

*Теорема об изменении кинетического момента МС относительно неподвижного центра*

$ dif/(dif t) ov(K)_(j O) = sum_j M_0 (ov(F)_j^((e))) $

$display(
  (dif ov(K)_(j O))/(dif t) = dif/(dif t) sum_j [ov(r)_j, m_j ov(V)_j] = sum_j dif/(dif t) [ov(r)_j, m_j ov(V)_j] = sum_j ([(dif ov(r)_j)/(dif t), m_j ov(V)_j] + [ov(r)_j, (dif (m_j ov(V)_j))/(dif t)]) = \ = sum_j [ov(r)_j, ov(F)_j^((e))] + sum_j [ov(r)_j, ov(F)_j^((i))] = sum_j ov(M)_0 (ov(F)_j^((e))) + cancel(sum_j ov(M)_0 (ov(F)_j^((i))))) \
ov(K)_0 = display(sum_j [ov(r)_j, m_j ov(V)_j] => (dif ov(K)_0)/(dif t) = sum_j ov(M)_0 (ov(F)_j^((e))))$

#grid(
  columns: (1fr, 1fr),
  align: horizon,
  [
    $
      [ov(r)_j, m_j ov(V)_j] = mat(
        delim: "|",
        ov(i), ov(j), ov(k);
        x_j, y_j, z_j;
        m_j V_(j x), m_j V_(j y), m_j V_(j z);
      )
    $
  ],
  [
    #figure(
      image("source-figures/lect0-1-6.png", width: 50%),
    )
  ],
)

$x'_j = x_j, y'_j = y_j, z'_j != z_j => K_"O'Z'" = display(sum_j (x'_j m_j V_(j y) - y'_j m_j V_(j x)) = sum_j (x_j m_j V_(j y) - y_j m_j V_(j x)) = K_"OZ")$

*Кинетический момент МС относительно оси*

Кинетическим моментом МС относительно оси называется проекция на эту ось вектора кинетического момента МС, вычисленного относительно любого центра, лежащего на этой оси $ K_"Ox" = "Пр"_"Ox" ov(K)_O $ Производная по времени от кинетического момента МС относительно неподвижной оси равна алгебраической сумме моментов внешних сил относительно этой оси $ (dif K_(O x))/(dif t) = sum_j M_(O x) (ov(F)_j^((e))) $

$display("Пр"_"Ox" (dif ov(K)_O)/(dif t) = "Пр"_"Ox" sum_j ov(M)_O (ov(F)_j^((e)))\; dif/(dif t) "Пр"_"Ox" ov(K)_O = sum_j "Пр"_"Ox" ov(M)_O (ov(F)_j^((e)))) \
"Пр"_"Ox" ov(K)_O = K_(O x); "Пр"_"Ox" ov(M)_O (ov(F)_j^((e))) = M_(O x) (ov(F)_j^((e)))$

= Кинетический момент твердого тела при его вращении вокруг неподвижной оси. Дифференциальное уравнение вращательного движения твердого тела

#v(1em)

#grid(
  columns: (2fr, 1fr),
  align: horizon,
  [
    $[ov(r)_j, m_j ov(V)_j]_z = x_j m_j V_(j y) - y_j m_j V_(j x) \
    ov(V)_j = [ov(omega), ov(r)_j] = mat(delim: "|", ov(i), ov(j), ov(k); 0, 0, dot(phi); x_j, y_j, z_j) \
    V_(j x) = -dot(phi) y_j; V_(j y) = dot(phi) x_j; V_(j z) = 0 \
    K_(O z) = display(sum_j [ov(r)_j; m_j ov(V)_j] = sum_j (x_j m_j dot(phi) x_j - y_j m_j (-dot(phi) y_j)) = \ = sum_j dot(phi) m_j (x_j^2 + y_j^2) = dot(phi) sum_j m_j (x_j^2 + y_j^2)); x_j^2 + y_j^2 = d_(j z)^2$
  ],
  [
    #figure(
      image("source-figures/lect0-1-7.png", width: 80%),
    )
  ],
)

Момент инерции: $ J_z = sum_j m_j d_(j z)^2 $

$ K_(O z) = J_z dot(phi) $

$display((dif K_(O z))/(dif t) = sum_j M_(O z) (ov(F)_j^((e))))$

$ J_z dot.double(phi) = sum_j M_(O z) (ov(F)_j^((e))) $

= Кинетическая энергия МС. Теоремы об изменении кинетической энергии в дифференциальной и интегральной формах

#v(1em)

Кинетической энергией МС называется сумма полупроизведений масс точек на квадраты их скоростей $ T = sum_j (m_j V_j^2)/2 $

*Теорема об изменении кинетической энергии МС в дифференциальной форме*

Дифференциал кинетической энергии МС равен сумме элементарных работ сил, приложенных к точкам этой системы $ dif T = sum_j dif' A (ov(F)_j) $

Доказательство:

$display(T = sum_j (m_j V_j^2) = sum_j m_j/2 (ov(V)_j, ov(V)_j)) \
display(dif T = sum_j m_j/2 dif(ov(V)_j, ov(V)_j) = sum_j m_j/2 ((dif ov(V)_j, ov(V)_j) + (ov(V)_j, dif ov(V)_j)) = sum_j m_j (d ov(V)_j, (dif ov(r))/(dif t)) = \ = sum_j (m_j ov(W)_j, dif ov(r)_j) = sum_j (ov(F)_j, dif ov(r)_j) = sum_j dif' A (ov(F)_j))$

В этой теореме в общем случае учитываются элементарные работы как внешних, так и внутренних сил.

*Теорема об изменении кинетической энергии МС в интегральной форме*

Изменение кинетической энергии МС, прошедшим перемещение точек из положения (1) в положение (2) равно сумме полных работ сил при перемещении $ Delta T = T_((2)) - T_((1)) = sum_j A_((1))^((2)) (ov(F)_j) $

Доказательство

$display(integral_((1))^((2)) dif T = integral_((1))^((2)) sum_j dif' A (ov(F)_j)\; T bar.v_((1))^((2)) = sum_j integral_((1))^((2)) dif' A (ov(F)_j) => T_((2)) - T_((1)) = sum_j A_((1))^((2)) (ov(F)_j))$

$dif' A$ - величина порядка дифференциала.

= Кинетическая энергия при разных видах движения. Формула Кёнига

#v(1em)

Для поступательного движения $ T = (M V^2)/2 $ Для вращательного движения $ T = (J omega^2)/2 $

Формула Кёнига описывает кинетическую энергию МС при плоскопараллельном движении

#grid(
  columns: (2fr, 1fr),
  [
    $ov(V)_j = ov(V)_A + [ov(omega), ov(rho)_j] \
    display(T = 1/2 sum_j m_j (ov(V)_A + [ov(omega), ov(rho)_j])^2)$ \
    ...
    #rect[$ T = (m V_C^2)/2 + (J_(O z) omega^2)/2 $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-12.png"),
    )
  ],
)

= Элементарная и полная работа силы. Сумма элементарных работ внешних сил, приложенных к твердому телу. Идеальные связи

#v(1em)

Элементарная работа силы - скалярное произведение вектора силы на вектор элементарного перемещения точки её приложения.
#grid(
  columns: (3fr, 1fr),
  [
    $ov(V) = (dif ov(r))/(dif t), dif ov(r) = ov(V) dif t$
    #rect[$ dif' A = (ov(F), dif ov(r)) $]
    $dif' A = F dif r cos(angle(ov(F), ov(V))) = F_x dif x + F_y dif y + F_z dif z = (ov(F), ov(V)) dif t = \ = F V cos(ov(F), ov(V)) dif t = (F_x V_x + F_y V_y + F_z V_z) dif t$
  ],
  [
    #figure(
      image("source-figures/lect0-1-13.png"),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    Полная работа силы при перемещении материальной точки из точки (1) в точку (2) (@работа) - интеграл вдоль траектории перемещения от элементарных работы #rect[$ A_((1))^((2)) = integral_((1))^((2)) dif' A $]
    Для $(ov(F)) = "const"$ (@постсила) имеем #rect[$ A_((1))^((2)) = F S $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-14.png", width: 95%),
      caption: [],
    ) <работа>
    #figure(
      image("source-figures/lect0-1-15.png"),
      caption: [],
    ) <постсила>
  ],
)

*Сумма работ элементарных работ сил, приложенных к твердому телу*

#v(1em)

+ Поступательное движение $ sum_j dif' A = (ov(F)_j^((e)), dif ov(r)) $
+ Вращательное движение $ sum_j dif' A = sum_j M_z (ov(F)_j^((e))) dif phi $
+ Плоскопараллельное движение $ sum_j dif' A (ov(F)_j) = ov(F)_j^((e)) V_A dif t + sum_j M_(A ov(omega)) (ov(F)_j^((e))) dif phi $

*Идеальные связи*

Идеальными связями называются связи, для которых сумма элементарных работ их реакций равна 0 на любых элементарных перемещениях, допускаемых связями $ forall dif ov(r)_j: sum_j (ov(R)_j, dif ov(R)_j) = 0 $

$dif' A_j = (ov(F)_j, ov(N)_j) dif t$

#grid(
  columns: (2fr, 1fr),
  [
    1. Гладкая поверхность
    #rect[$ dif' A = (ov(N), ov(V)_A) dif t = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-17.png", width: 75%),
    )
  ],
)
#grid(
  columns: (2fr, 1fr),
  [
    2. Неподвижный шарнир
    #rect[$ ov(V)_O = 0; dif' A = (ov(R), ov(V)_O) dif t = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-18.png", width: 60%),
    )
  ],
)

3. Нерастяжимая невесомая нить
#figure(
  image("source-figures/lect0-1-19.png", width: 50%),
)
$ov(T)_B = -ov(T)_A, "Пр"_ov("AB") ov(V)_A = "Пр"_ov("AB") ov(V)_B \
dif' A = (ov(T)_A, ov(V)_A) dif t + (ov(T)_B, ov(V)_B) dif t = ... = 0$

#grid(
  columns: (2fr, 1fr),
  [
    4. Качение без скольжения по неподвижной поверхности
    #rect[$ V_P = 0 - "М.Ц.С"; dif' A (ov(R)) = (ov(R), ov(V)_P) dif t = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-20.png", width: 55%),
    )
  ],
)

= Потенциальное поле сил. Теорема об изменении кинетической энергии в потенциальном поле силы. Интеграл энергии

#v(1em)

Поле сил называется потенциальным, если существует некая функция $U$, зависящая от координат ($exists U(x, y, z, ..., x_n, y_n, z_n)$), такая что выполняются уравнения $ F_(j x) = (partial U)/(partial x_j), F_(j y) = (partial U)/(partial y_j), F_(j z) = (partial U)/(partial z_j) $ для $j = 1...n$. Соответственно $U$ - силовая функция.

$display(sum_j dif' A (ov(F)_j) = sum_j (F_(j x) dif x_j + F_(j y) dif y_j + F_(j z) dif z_j) = sum_j ((partial U)/(partial x_j) dif x_j + (partial U)/(partial y_j) dif y_j + (partial U)/(partial z_j) dif z_j) = dif U) \
display(dif T = sum_j dif' A (ov(F)_j) = dif U)$

$ display(Delta T = integral_((1))^((2)) dif U = U_((2)) - U_((1)) = Delta U) $

В ППС полная работа не зависит от траектории перемещения точек.

Интеграл энергии: $ E = T + Pi = h = "const" $

= Оси Кёнига. Кинетический момент МС в движении относительно центра масс. Теорема об изменении кинетического момента МС в движении относительно центра масс

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    $"CX'" parallel "OX", "CY'" parallel "OY", "CZ'" parallel "OZ"$
  ],
  [
    #figure(
      image("source-figures/lect0-1-22.png", width: 70%),
    )
  ],
)

Оси координат, имеющие начало в центре масс и перемещающиеся поступательно, называются осями Кёнига. Движение МС относительно центра масс будем называть движением этой системы относительно осей Кёнига.

$
  cases(
    ov(V)_a = ov(V)_r + ov(V)_e,
    ov(V)_e = ov(V)_c
  ),
  cases(
    ov(r)_j = ov(r)_c + ov(rho)_j,
    ov(r)_c = display((sum_j m_j ov(r)_j)/M),
  ), M = sum_j m_j
$

$display(
  cases(
    ov(K)'_c = sum_j [ov(rho)_j, m_j ov(V)_(j z)],
    ov(K)_O = sum_j [ov(r)_j, m_j ov(V)_(j a)]
  )
) \
ov(K)_O = display(sum_j [ov(r)_c + ov(rho)_j; m_j (ov(V)_(j r)+ ov(V)_(j e))])$ \
...
$ ov(K)_O = ov(K)'_c + [ov(r)_c; (sum_j m_j) ov(V)_c] $

*Теорема об изменении кинетического момента МС в движении относительно центра масс*

Производная по времени от кинетического момента МС в движении относительно центра масс равна векторной сумме моментов внешних сил относительно центра масс

$ (dif ov(K)_c) / (dif t) = sum_j ov(M)_c (ov(F)_j^((e))) = sum_j [ov(rho)_j, ov(F)_j^((e))] $

Доказательство

$display((dif ov(K)_O) / (dif t) = sum_j ov(M)_O (ov(F)_j^((e))) = sum_j [ov(r)_j, ov(F)_j^((e))]), ov(r)_j = ov(r)_c + ov(rho)_j \
display((dif ov(K)_O) / (dif t) = sum_j [ov(r)_c, ov(F)_j^((e))] + sum_j [ov(rho)_j, ov(F)_j^((e))] = [ov(r)_c, sum_j ov(F)_j^((e))] + sum_j ov(M)_c (ov(F)_j^((e)))\; (dif ov(K)_O) / (dif t) = [ov(r)_c; M ov(W)_c] + \ + sum_j ov(M)_c (ov(F)_j^((e)))) \
display(M ov(W)_c = sum_j ov(F)_j^((e))) \
display((dif ov(K)_O) / (dif t) = (dif ov(K)_c) / (dif t) + [(dif ov(r)_c)/(dif t), M ov(V)_c] + [ov(r)_c, dif/(dif t) (M ov(V)_c)] = (dif ov(K)_c) / (dif t) + [ov(r)_c, M ov(W)_c]) \
display((dif ov(K)_c) / (dif t) + cancel([ov(r)_c, M ov(W)_c]) = cancel([ov(r)_c; M ov(W)_c]) + sum_j ov(M)_c (ov(F)_j^((e))))$

= Дифференциальные уравнения плоскопараллельного движения тела

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    #rect[$
      cases(
        M ov(W)_c = display(sum_j ov(F)_j^((e))),
        display((dif ov(K)_O) / (dif t) = sum_j ov(M)_c (ov(F)_j^((e)))),
      )
    $]
    $x': ov(K)'_c = J_(c z') ov(omega) \
    y': display(M dot.double(X)_c = sum_j F_(j x)^((e))) \
    z': display(J_(c z) dot (dif omega)/(dif t) = J_(c z) dot.double(phi) = sum_j M_(c z') (ov(F)_j^((e))))$
  ],
  [
    #figure(
      image("source-figures/lect2-fig3.png", width: 80%),
    )
  ],
)

= Принцип д'Аламбера для точки и МС

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    $m ov(W) = ov(F) + ov(R)$ \
    Cила инерции д'Аламбера: #rect[$ ov(Phi) = -m ov(W) $]
    #rect[$ ov(F) + ov(R) + ov(Phi) = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect2-fig4.png"),
    )
  ],
)

Для точки: векторная сумма активных сил, реакций связи, действующих на точку и силы инерции д'Аламбера равна 0

Для МС: если к действующим на точки МС активным силам и реакциям связей добавить Даламберовы силы инерции, то полученная система сил будет уравновешанной

$ov(F)_j + ov(R)_j + ov(Phi)_j = 0 \
{ov(F)_j, ov(R)_j, ov(Phi)_j} ~ 0 \
{ov(F)_1, ov(R)_1, ov(Phi)_1, ov(F)_2, ov(R)_2, ov(Phi)_2, ..., ov(F)_N, ov(R)_N, ov(Phi)_N} ~ 0 \
display(sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e)) + sum_j ov(Phi)_j = 0)$

$
  forall "т. A" cases(
    display(sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e)) + sum_j ov(Phi)_j = 0),
    display(sum_j ov(M)_A (ov(F)_j^((e))) + sum_j ov(M)_A (ov(R)_j^((e))) + sum_j ov(M)_A (ov(Phi)_j) = 0),
  )
$

$
  "В проекциях": cases(
    display(sum_j F_(j x)^((e)) + sum_j R_(j x)^((e)) + sum_j Phi_(j x) = 0),
    display(sum_j F_(j y)^((e)) + sum_j R_(j y)^((e)) + sum_j Phi_(j y) = 0),
    display(sum_j F_(j z)^((e)) + sum_j R_(j z)^((e)) + sum_j Phi_(j z) = 0),
    display(sum_j M_(A x) (ov(F)_j^((e))) + sum_j M_(A x) (ov(R)_j^((e))) + sum_j M_(A x) (ov(Phi)_j) = 0),
    display(sum_j M_(A y) (ov(F)_j^((e))) + sum_j M_(A y) (ov(R)_j^((e))) + sum_j M_(A y) (ov(Phi)_j) = 0),
    display(sum_j M_(A z) (ov(F)_j^((e))) + sum_j M_(A z) (ov(R)_j^((e))) + sum_j M_(A z) (ov(Phi)_j) = 0),
  )
$

Метод решения задач динамики с помощью принципа д'Аламбера называется методом кинетостатики.

= Главный вектор и главный момент сил инерции д'Аламбера

#v(1em)

$display(M ov(W)_c = sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e))) \
display(ov(Phi) = sum_j ov(Phi)_j = -(sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e))) = -M ov(W)_c)$

Главный вектор: $ ov(Phi) = -M ov(W)_c $

$display((dif ov(K)_O) / (dif t) = sum_j ov(M)_O (ov(F)_j^((e))) + sum_j ov(M)_O (ov(R)_j^((e)))) \
display(ov(M)_O^(Phi) = sum_j ov(M)_O (ov(Phi)_j) = -(sum_j ov(M)_O (ov(F)_j^((e))) + sum_j ov(M)_O (ov(R)_j^((e)))))$

$display(ov(M)_C^(Phi) = sum_j ov(M)_C (ov(Phi)_j)) \
display((dif ov(K)'_C) / (dif t) = sum_j ov(M)_C (ov(F)_j^((e))) + sum_j ov(M)_C (ov(R)_j^((e))))$

Главный момент: $ ov(M)_C^(Phi) = -(dif ov(K)'_C) / (dif t) "и" ov(M)_O^(Phi) = -(dif ov(K)_O) / (dif t) $

= Классификация связей. Виртуальное перемещение. Виртуальная работа. Уточненное определение идеальных связей. Принцип элементарных перемещений

#v(1em)

Связями будем называть ограничения на положения и скорости объектов МС. Уравнение связи:

$ f(x, y, z, dot(x), dot(y), dot(z), t) = 0" "(>= 0) $

#grid(
  columns: (2fr, 1fr),
  column-gutter: 1em,
  [
    Связь называется двухсторонней (или удерживающей), если её уравнение реализуется в виде равенства (@связи, слева) #rect[$ x^2 + y^2 + z^2 = l^2 $]
    Связь называется односторонней (неудерживающей), если её уравнение реализуется в виде неравенства (@связи, справа) #rect[$ l^2 - (x^2 + y^2 + z^2) >= 0 $]
  ],
  [
    #figure(
      image("source-figures/lect3-fig2.png"),
      caption: [],
    ) <связи>
  ],
)

#grid(
  columns: (1fr, 1fr),
  [
    Связь называется стационарной, если в уравнении связей не присутствует явно время $t$. Связь называется нестационарной, если в уравнении связей явно присутствует время $t$ (@стационарный). \
    $z = 0, u = "const", u = s t$
    #rect[$ x^2 - (y - u t)^2 - l^2 = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect3-fig3.png", width: 80%),
      caption: [],
    ) <стационарный>
  ],
)

Связь называется геометрической, если в уравнении связей вводят только координаты точки.

#grid(
  columns: (1fr, 1fr),
  [
    Связь называется кинематической, если в уравнении связи входят скорости (@геомкинем).

    $V_c = omega R \
    dot(x)_c - omega R = 0 \
    (dif x_c)/(dif t) = (dif phi)/(dif t) R \
    x_c = phi R + "const"$
    #rect[$ x_c - phi R - "const" = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect3-fig4.png"),
      caption: [],
    ) <геомкинем>
  ],
)

Связь называется голономной, если она либо геометрическая, либо кинематическая, уравнение которой можно проинтегрировать, то есть представить в виде геометрической (@геомкинем).

*Виртуальные перемещения*

$f(x, y, z, dot(x), dot(y), dot(z), t) = 0 \
f(x, y, z, t) = 0$

$dif f = (partial f)/(partial x) dif x + (partial f)/(partial y) dif y + (partial f)/(partial z) dif z$

$delta f = (partial f)/(partial x) delta x + (partial f)/(partial y) delta y + (partial f)/(partial z) delta z$ - вариация функции ($t = "const"$)

$ov(r) = (x, y, z, t) \
dif ov(r) = (partial ov(r))/(partial x) dif x + (partial ov(r))/(partial y) dif y + (partial ov(r))/(partial z) dif z + (partial ov(r))/(partial t) dif t "- элементарное перемещение"$

Виртуальное перемещение $ delta ov(r) = (partial ov(r))/(partial x) delta x + (partial ov(r))/(partial y) delta y + (partial ov(r))/(partial z) delta z $

Виртуальным перемещением называется мысленное малое перемещение точки, допускаемое связями, в фиксированный момент времени. При стационарных связях множество действительных элементарных перемещений, допускаемых связями, и множество виртуальных перемещений совпадают.

Виртуальной работой называется скалярное произведение вектора силы на вектор виртуального перемещения точки (@виртточка).

#grid(
  columns: (1fr, 2fr),
  [
    #rect[$
       dif' A & = (ov(F), dif ov(r)) \
      delta A & = (ov(F), delta ov(r))
    $]
  ],
  [
    #figure(
      image("source-figures/lect3-fig5.png", width: 20%),
      caption: [],
    ) <виртточка>
  ],
)

*Уточненное определение идеальной связи*

Связь называется идеальной, если сумма виртуальных работ её реакций равна 0 на любых виртуальных перемещениях. Все примеры идеальных связей, приведенных ранее, являются идеальными и по уточненному определению.

Для сохранения равновесия МС необходимо, чтобы суммы виртуальных работ активных сил была равна нулю при идеальных связях.

#grid(
  columns: (1fr, 1fr),
  [
    $dif' A &= display(sum_j (ov(R)_j, dif ov(r)_j)) = 0 \
    delta A &= display(sum_j (ov(R)_j, delta ov(r)_j)) = 0$

    $ov(F)_j + ov(R)_j = 0 \
    (ov(F)_j + ov(R)_j, delta ov(r)_j) = 0$

    $display(sum_j (ov(F)_j, delta ov(r)_j) + sum_j (ov(R)_j, delta ov(r)_j) = 0) \
    "Идеальная связь" => display(sum_j (ov(R)_j, delta ov(r)_j) = 0)$

    #rect[$ sum_j (ov(F)_j, delta ov(r)_j) = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect3-fig6.png", width: 50%),
    )
  ],
)

При идеальных связях сумма виртуальных работ активных сил и сил инерций д'Аламбера равна 0.

= Принцип д'Аламбера-Лагранжа. Основное уравнение аналитической динамики

#v(1em)

N точек, 3N координат

#grid(
  columns: (2fr, 1fr),
  [
    $ov(Phi)_(alpha) = -m_(alpha) ov(W)_(alpha) \
    ov(F)_(alpha) + ov(R)_(alpha) + ov(Phi)_(alpha) = 0 | dot delta ov(r)_A \
    (ov(F)_(alpha) + ov(R)_(alpha) + ov(Phi)_(alpha), delta ov(r)_(alpha)) = 0 \
    display(sum_(alpha) (ov(F)_(alpha), delta ov(r)_(alpha)) + cancel(sum_(alpha) (ov(R)_(alpha), delta ov(r)_(alpha))) + sum_(alpha) (ov(Phi)_(alpha), delta ov(r)_(alpha)) = 0)$
  ],
  [
    #figure(
      image("source-figures/lect3-fig7.png", width: 70%),
    )
  ],
)

Общее уравнение аналитической динамики (принцип д'Аламбера-Лагранжа) $ sum_(alpha) (ov(F)_(alpha), delta ov(r)_(alpha)) + sum_(alpha) (ov(Phi)_(alpha), delta ov(r)_(alpha)) = 0 $

= Обобщенные координаты, скорости и силы. Число степеней свободы. Способы вычисления обобщенных сил

#v(1em)

Обобщенными координатами называются независимые параметры, которые полностью определяют положение всех точек МС - $q_1, ..., q_n$. Обобщенной скоростью называется производная по времени от обобщенной координаты.

$ f_k (x_1, y_1, z_1, ..., x_N, y_N, z_N, t) = 0 $

$ dot(q)_i = (dif q_i)/(dif t) $

$ov(r)_j = ov(r)_j (q_1, ..., q_n, t)$

$ ov(V)_j = display(sum_(i=1)^n (partial ov(r)_j)/(partial q_i) dot(q_i) + (partial ov(r)_j)/(partial t)) $

Числом степеней свободы МС называется число независимых вариаций обобщенных координат. В голономных системах число степеней свободы совпадает с числом обобщенных координат. Голономные МС называется МС, на которые наложены только голономные связи.

$
  delta A = sum_j (ov(F)_j, delta ov(r)_j) = sum_j (ov(F)_j, sum_(i=1)^n (partial ov(r)_j)/(partial q_i) delta q_i) = sum_j sum_(i=1)^n (ov(F)_j, (partial ov(r)_j)/(partial q_i)) delta q_i = \ = sum_(i=1)^n sum_j (ov(F)_j, (partial ov(r)_j)/(partial q_i)) delta q_i = sum_(i=1)^n delta q_i sum_j (ov(F)_j, (partial ov(r)_j)/(partial q_i))
$

*Обобщенные силы*

Обобщенными силами ($Q_i$) называются множители в выражении для суммы виртуальных работ активных сил при вариациях обобщенных координат

$ Q_i = sum_j (ov(F)_j, (partial ov(r)_j)/(partial q_i)) $

*Способы вычисления обобщенных сил*

1. По определению $ Q_i = sum_j (ov(F)_j, (partial ov(r)_j)/(partial q_i)) = sum_j (F_(j x) (partial x_j)/(partial q_i) + F_(j y) (partial y_j)/(partial q_i) + F_(j z) (partial z_j)/(partial q_i)) $

2. Для голономных систем

$delta q_i - "независимы" \
delta q_1 > 0; delta q_2 = ... = delta q_n = 0 \
delta A_((1)) = display(sum_j (ov(F)_j, delta ov(r)_j^((1)))); delta A_((1)) = display(sum_(i=1)^n Q_i delta q_i = Q_1 delta q_1)$

3. Для потенциальных сил

$Pi(x_1(q_1, ..., q_n), y_1(q_1, ..., q_n), ..., z_N (q_1, ..., q_n))$

$ Q_i = -(partial Pi)/(partial q_i) $

= Обобщенные силы инерции

#v(1em)

$ov(Phi)_j = -m_j ov(W)_j \
display(delta A^(Phi) = sum_j (ov(Phi)_j, delta ov(r)_j) = -sum_j m_j (ov(W)_j, delta ov(r)_j) = sum_(i=1)^n Q_i^(Phi) delta q_i)$\
$Q_i^(Phi)$ - обобщенные силы инерции

$display(delta ov(r)_j = sum_(i=1)^n (partial ov(r)_j)/(partial q_i) delta q_i) \
display(ov(V)_j = (dif ov(r)_j)/(dif t) = sum_(i=1)^n (partial ov(r)_j)/(partial q_i) dot(q_i))$

$n = 1, q_1 = q \
delta ov(r)_j = (partial ov(r)_j)/(partial q) delta q \
ov(V)_j = (partial ov(r)_j)/(partial q) dot(q) \
(partial ov(V)_j)/(partial dot(q)) = (partial ov(r)_j)/(partial q)" "(**) \
ov(V)_j = (dif ov(r)_j)/(dif t); (partial ov(V)_j)/(partial q) = dif/(dif t) (partial ov(r)_j)/(partial q)" "(*) \
V_j^2 = (ov(V)_j, ov(V)_j) \
partial/(partial q) V_j^2 = partial/(partial q) (ov(V)_j, ov(V)_j) = ((partial ov(V)_j)/(partial q), ov(V)_j) + (ov(V)_j, (partial ov(V)_j)/(partial q)) = 2(ov(V)_j, (partial ov(V)_j)/(partial q))" "(****) \
(partial (V_j)^2)/(partial dot(q)) = 2(ov(V)_j, (partial ov(V)_j)/(partial dot(q)))" "(***) \
(ov(W)_j, delta ov(r)_j) = ((dif ov(V)_j)/(dif t), (partial ov(r)_j)/(partial q)) delta q = \
= display(dif/(dif t) (ov(V)_j, overparen((partial ov(r)_j)/(partial q), (**))) - (ov(V)_j, overparen(dif/(dif t) ((partial ov(r)_j)/(partial q)), (*))) = dif/(dif t) overparen((ov(V)_j, (partial ov(V)_j)/(partial dot(q))), (***)) - overparen((ov(V)_j, (partial ov(V)_j)/(partial q)), (****)) = 1/2 dif/(dif t) ((partial (V_j)^2)/(partial dot(q))) - 1/2 (partial (V_j)^2)/(partial q)) \
display(
  delta A^(Phi) = -sum_j m_j (ov(W)_j, delta ov(r)_j) delta q = -{sum_j 1/2 m_j dif/(dif t) ((partial (V_j)^2)/(partial dot(q))) - sum_j 1/2 m_j (partial (V_j)^2)/(partial q)} delta q = -delta q times \ times {sum_j dif/(dif t) ((partial (1/2 m_j V_j^2))/(partial dot(q))) - sum_j partial/(partial q) (1/2 m_j V_j^2)} = -delta q {dif/(dif t) partial/(partial dot(q)) (sum_j (m_j V_j^2)/2) - partial/(partial q) (sum_j 1/2 m_j V_j^2)} = \ = -delta q {dif/(dif t) (partial T)/(partial dot(q)) - (partial T)/(partial q)}
);"  "delta A^(Phi) = Q^(Phi) delta q$

$ Q^(Phi) = -{dif/(dif t) (partial T)/(partial dot(q)) - (partial T)/(partial q)} $

По аналогии с системами с n степенями свободы

$ Q_i^(Phi) = -{dif/(dif t) (partial T)/(partial dot(q)_i) - (partial T)/(partial q_i)} $

= Уравнения Лагранжа II рода. Функция Лагранжа. Уравнения Лагранжа II рода в потенциальном поле сил

#v(1em)

Вывод уравнения Лагранжа II рода:

$display(sum_(i=1)^n Q_i delta q_i + sum_(i=1)^n Q_i^(Phi) delta q_i = 0) \
display(sum_(i=1)^n (Q_i + Q_i^(Phi)) delta q_i = 0)$

$delta q_i - "независимы" \
Q_i + Q_i^(Phi) = 0" "(i = 1...n) \
Q_i - display({dif/(dif t) (partial T)/(partial dot(q)_i) - (partial T)/(partial q_i)}) = 0$

$ dif/(dif t) (partial T)/(partial dot(q)_i) - (partial T)/(partial q_i) = Q_i; i = 1...n $

$Q_i = -(partial Pi)/(partial q_i)$

$ dif/(dif t) (partial T)/(partial dot(q)_i) - (partial T)/(partial q_i) = -(partial Pi)/(partial q_i) $

*Уравнение Лагранжа II рода в потенциальном поле сил*

$ L = T - Pi "- Лагранжиан (функция Лагранжа)" $

$display((partial Pi)/(partial dot(q)_i) = 0 => (partial L)/(partial dot(q)_i) = (partial T)/(partial dot(q)_i)\; dif/(dif t) (partial T)/(partial dot(q)_i) - partial/(partial q_i) (T - Pi) = 0)$

$ dif/(dif t) (partial L)/(partial dot(q)_i) - (partial L)/(partial q_i) = 0 $

= Уравнения равновесия голономных систем. Уравнения равновесия в потенциальном поле сил. Понятие устойчивого равновесия. Теорема Лагранжа-Дирихле об устойчивости равновесия консервативных систем

#v(1em)

$display(sum_(i=1)^n Q_i delta q_i) = display(sum_j (ov(F)_j, delta ov(r)_j)) = 0 - "уравнение равновесия голономных систем" \
(partial Pi)/(partial q_i) = 0 => q_i^*, i = 1...n - "положение равновесия" \
x_i = q_i - q_i^* - "возмущение" \
x_(i O) = q_(i O) - q_i^*" "(t_0 = 0) => dot(x)_(i O) = dot(q)_(i O)$

Положение равновесия считаем устойчивым, если при всех достаточно малых начальных возмущениях по координатам и скоростям МС остается в заданной малой окрестности положения равновесия.

*Теорема Лагранжа-Дирихле*

Если в положении равновесия консервативной МС потенциальная энергия имеет изолированный минимум, то положение равновесия является устойчивым $(display((partial^2 Pi)/(partial q^2) > 0))$.

#figure(
  image("source-figures/lect5-2.png", width: 40%),
)

Если в положении равновесия потенциальная энергия имеет максимум, то положение равновесия неустойчиво.

= Приближенные выражения кинетической и потенциальной энергии МС вблизи устойчивого положения равновесия

#v(1em)

$T = 1/2 a(q) dot(q)^2 \
a(q) = q(q^*) + (partial a)/(partial q) bar.v_(q^*)(q - q^*) + ... \
a^* = a(q^*) \
x = q - q^*, dot(x) = dot(q) => T approx 1/2 a^* dot(x)^2 \
Pi(q) = Pi(q^*) + (partial Pi)/(partial q) bar.v_(q^*)(q - q^*) + 1/2! (partial^2 Pi)/(partial q^2) bar.v_(q^*)(q - q^*) + ...\
(partial Pi)/(partial q) bar.v_(q^*) = 0; Pi(q^*) = Pi^*; (partial^2 Pi)/(partial q^2) bar.v_(q^*) = c^* > 0 \
Pi approx Pi^* + 1/2 c^* x^2$

= Свободные малые колебания МС с одной степенью свободы. Уравнение движения и его интегрирование

#v(1em)

$ a^* dot.double(x) + c^* x = 0 $

_Решение дифференциального уравнения обязательно (использовать метод Эйлера)_

$ A = sqrt(C_1^2 + C_2^2) - "Амплитуда", x = A sin(k t + epsilon), $ где $k$ - (круговая) частота колебаний, $k t + epsilon$ - фаза колебаний, $epsilon$ - начальная фаза

#figure(
  image("source-figures/lect5-6.png", width: 60%),
  caption: [График зависимости координаты тела, колеблющегося свободно; $tau = (2pi)/k$],
)

$quest.inv integral A sin(k t + epsilon) dif t = -(A cos(k t + epsilon))/k + C ?$

= Малые колебания МС с 1 степенью свободы при наличии малого сопротивления. Уравнение движения и его интегрирование

#v(1em)

В качестве силы сопротивления рассматривается сила вязкого трения

#grid(
  columns: (2fr, 1fr),
  [
    $ov(F)_j = -beta_j ov(V)_j, beta_j > 0 \
    delta A = display(sum_j (ov(F)_j, delta ov(r)_j)) \
    delta ov(r)_j = (partial ov(r)_j)/(partial q) delta q; ov(V)_j = (partial ov(r)_j)/(partial q) dot(q) \
    delta A = display(sum_j (-beta_j (partial ov(r)_j)/(partial q) dot(q), (partial ov(r)_j)/(partial q) q) = -(sum_j beta_j ((partial ov(r)_j)/(partial q))^2) dot(q) delta q) \
    b_j (q) = display(sum_j beta_j ((partial ov(r)_j)/(partial q))^2) > 0 \
    b_j (q) = b_j (q^*) + (partial b_j)/(partial q) (q- q^*) + ... approx b_j (q^*) = b^* > 0 \
    delta A = -b^* dot(q) delta q \
    Q^* = -b^* q, dot(q) = dot(x) => Q^* = -b dot(x)$
  ],
  [
    #figure(
      image("source-figures/lect5-7.png"),
    )
  ],
)

$ a^* dot.double(x) + c^* x = -b^* dot(x) <=> a^* dot.double(x) + b^* dot(x) + c^* x = 0; a^*, b^*, c^* > 0 $

$dot.double(x) + b^* / a^* dot(x) + c^* / a^* x = 0 \
b^* / a^* = 2n, c^* / a^* = k^2 \
dot.double(x) + 2n dot(x) + k^2 x = 0 \
lambda^2 + 2n lambda + k^2 = 0 - "характеристическое уравнение" \
lambda = -n plus.minus sqrt(n^2 - k^2)$

$ n < k - "случай малого сопротивления" $

$k_1^2 = k^2 - n^2 \
lambda = -n plus.minus sqrt(-k_1^2) = -n plus.minus i k_1 \
X = ... = A e^(n t) sin(k_1 t + epsilon)$

#grid(
  columns: (1.5fr, 1fr),
  [
    $x -> 0 "при" t -> infinity$
    #rect[$ tau_1 = (2pi)/k_1 - "период затухающих колебаний" $]
  ],
  [
    #figure(
      image("source-figures/lect6-1.png"),
    )
  ],
)

= Малые колебания МС при наличии гармонической вынуждающей силы и при отсутствии сил сопротивления. Резонанс. Уравнение движения и его интегрирование

#v(1em)

$ a^* dot.double(x) + c^* x = tilde(F) cos(p t) $

$X_"ОН" = X_"ОО" + X_"Част"; X_"ОО" = A sin(k t + epsilon), k = sqrt(c^* / a^*) \
X_"Част" = B cos(p t) + D sin(p t) \
dot(X)_"Част" = -B p sin(p t) + D p cos(p t), dot.double(X)_"Част" = -B p^2 cos(p t) - D p^2 sin(p t) \
a^* (-B p^2 cos(p t) - D p^2 sin(p t)) + c^* (B cos(p t) + D sin(p t)) = tilde(F) cos(p t) \
display(
  cases(
    sin(p t)\: -a^* B p^2 + c^* B = tilde(F),
    cos(p t)\: -a^* D p^2 + c^* D = 0,
  ) => cases(
    B = tilde(F)/(-a^* p^2 + c^*),
    D = 0/(-a^* p^2 + c^*),
  )
), -a^* p^2 + c^* != 0 <=> p^2 != c^* / a^* = k^2 <=> p != k \
X_"ОН" = A sin(k t + epsilon) + tilde(F)/(-a^* p^2 + c^*) cos(p t)$

$k = p - "резонанс" \
dot.double(x) + k^2 x = F_0 cos(p t), F_0 = tilde(F)/a^* \
X_"Част" = B t cos(p t) + D t sin(p t); dot(X)_"Част" = B cos(p t) + B t (-sin(p t)) p + D sin(p t) + D t cos(p t) p; dot.double(X)_"Част" = \ = -B p sin(p t) - B p sin(p t) - B p t cos(p t) p + D p cos(p t) + D p cos(p t) + D p t (-sin(p t)) p \
-2B p sin(p t) - B p t cos(p t) p + 2D p cos(p t) + D p t (-sin(p t)) p + k^2 (B t cos(p t) + D t sin(p t)) = F_0 cos(p t) \
display(
  cases(
    cos(p t)\: 2D p = F_0 => D = F_0/(2p),
    sin(p t)\: -2B p = 0 => B = 0,
  )
) \
X_"Част" = X_"вын." = F_0/(2p) t sin(p t)$

#grid(
  columns: (1fr, 1fr),
  [
    $abs(X_"вын.") -> infinity "при" t -> infinity \
    abs(X_"ОН") -> infinity "при" t -> infinity$
  ],
  [
    #figure(
      image("source-figures/lect6-3.png"),
    )
  ],
)

$X_"ОО"$ - собственные колебания ($X_"собств."$), $X_"част."$ - вынужденные колебания ($X_"вын."$)

Явление, при котором совпадают частоты вынужденных и собственных колебаний, называют резонансом. При резонансе неограниченно возрастает амплитуда колебаний. Биение - случай, когда p лишь приблизительно равен k.

= Осевые и центробежные моменты инерции и их свойства. Тензор инерции. Главные оси инерции

#v(1em)

#grid(
  columns: (2fr, 1fr),
  [
    $display(J_z = sum_j m_j d_(j z)^2)$
    #rect[$
      cases(
        reverse: #true,
        delim: "|",
        J_x = sum_j m_j (y_j^2 + z_j^2),
        J_y = sum_j m_j (x_j^2 + z_j^2),
        J_z = sum_j m_j (x_j^2 + y_j^2),
      ) "Осевые моменты инерции"
    $]
    #rect[$
      cases(
        reverse: #true,
        delim: "|",
        J_(x y) = sum_j m_j x_j y_j,
        J_(x z) = sum_j m_j x_j z_j,
        J_(y z) = sum_j m_j y_j z_j,
      ) " Центробежные (смешанные)
моменты инерции"
    $]
  ],
  [
    #figure(
      image("source-figures/lect6-4.png"),
    )
  ],
)

Смешанный момент инерции в индексе которого присутствует название оси симметрии, равен 0. Смешанный момент инерции, в индексе которого присутствует название оси ортогональной плоскости симметрии, равен 0.

#grid(
  columns: (1fr, 1fr),
  [
    #figure(
      image("source-figures/lect6-5.png", width: 60%),
    )
    $ J_(x z) = display(sum_j m_j (x_j z_j + (-x_j) z_j)) = 0, J_(y z) = 0 $
  ],
  [
    #figure(
      image("source-figures/lect6-6.png", width: 50%),
    )
    $ J_(x z) = display(sum_j m_j (x_j z_j + x_j (-z_j))) = 0 $
  ],
)

$
  I = mat(
    delim: "|",
    J_x, -J_(x y), -J_(x z);
    -J_(y x), J_y, -J_(y z);
    -J_(z x), -J_(z y), J_z;
  ) - "тензор инерции"
$

Главными осями инерции называются оси, для которых смешанные моменты инерции в индексе которых присутствует название этой оси равны 0 ($J_(x y) = J_(x z) = 0 => O x - "главная ось инерции"$). Можно доказать, что в любой точке твердого тела любой формы можно построить по крайней мере 3 взаимноортоганальные главные оси инерции.

Если $O x$, $O y$, $O z$ - главные оси инерции, то $ov(K)_0 = (J_x omega_x, J_y omega_y, J_z omega_z)$.

= Кинетический момент твердого тела, вращающегося вокруг неподвижной оси

#v(1em)

$ K_z = (sum_(j=1)^N m_j d_j^2) dot omega = J_z omega $

Если МС состоит из нескольких тел, вращающихся вокруг одной неподвижной оси, то берётся сумма $K_z$

= Динамические и кинематические уравнения Эйлера движения твёрдого тела с неподвижной точкой

#v(1em)
#grid(
  columns: (1.5fr, 1fr),
  [
    ON - линия узлов
    #rect[$
      cases(
        reverse: #true,
        psi - "угол прецессии",
        theta - "угол нутации",
        phi - "угол собственного вращения",
      ) "Углы Эйлера"
    $]
    #rect[$ ov(omega) = ov(dot(psi)) + ov(dot(theta)) + ov(dot(phi)) $]
  ],
  [
    #figure(
      image("source-figures/lect6-7.png"),
    )
  ],
)

#v(1em)

$dot(psi)' = psi sin(theta), dot(psi)'' = dot(psi) cos(theta) \
display(
  cases(
    omega_x = dot(psi)' cos(90 degree - phi) + dot(theta) cos(phi),
    omega_y = dot(psi)' cos(phi) + dot(theta) cos(90 degree + phi),
    omega_z = dot(psi)'' + dot(phi),
  )
)$

$
  cases(
    reverse: #true,
    delim: "|",
    omega_x = dot(psi)' cos(90 degree - phi) + dot(theta) cos(phi),
    omega_y = dot(psi)' cos(phi) + dot(theta) cos(90 degree + phi),
    omega_z = dot(psi)'' + dot(phi),
  ) "Кинематические уравнения Эйлера"
$

#v(1em)

$display(
  (dif ov(K)_0)/(dif t) = ov(M)_0^((e))\; (dif ov(K)_0)/(dif t) = (tilde(dif) ov(K)_0)/(dif t) + [ov(omega), ov(K)_0] => (tilde(dif) ov(K)_0)/(dif t) + [ov(omega), ov(K)_0] = ov(M)_0^((e))
)$

$display(
  [ov(omega), ov(K)_0] = mat(delim: "|", ov(i), ov(j), ov(k); omega_x, omega_y, omega_z; K_x, K_y, K_z)\; [ov(omega), ov(K)_0]_x = omega_y K_z - omega_z K_y = omega_y J_z omega_z - omega_z J_y omega_y = omega_y omega_z (J_z - J_y)
)$

$
  cases(
    reverse: #true,
    delim: "|",
    J_x dot(omega)_x + (J_z - J_y) omega_y omega_z = M_x^((e)),
    J_y dot(omega)_y + (J_x - J_z) omega_x omega_z = M_y^((e)),
    J_z dot(omega)_z + (J_y - J_x) omega_x omega_y = M_z^((e)),
  ) "Динамические уравнения Эйлера"
$

= Векторные и скалярные уравнения произвольного движения твердого тела

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    $display(
      vec(
        align: #left,
        delim: delimsys,
        ov(omega) = ov(dot(psi)) + ov(dot(theta)) + ov(dot(phi)),
        (tilde(dif) ov(K)_c)/(dif t) + [ov(omega), ov(K)_c] = ov(M)_c^((e)),
      ) "векторные уравнения" \
      "Скалярные уравнения:" \
      cases(
        omega_x = dot(psi)' cos(90 degree - phi) + dot(theta) cos(phi),
        omega_y = dot(psi)' cos(phi) + dot(theta) cos(90 degree + phi),
        omega_z = dot(psi)'' + dot(phi),
      ) \
      cases(
        J_x dot(omega)_x + (J_z - J_y) omega_y omega_z = M_c^((e)),
        J_y dot(omega)_y + (J_x - J_z) omega_x omega_z = M_c^((e)),
        J_z dot(omega)_z + (J_y - J_x) omega_x omega_y = M_c^((e)),
      )
    )$],
  [
    #figure(
      image("source-figures/lect7-1.png"),
    )
  ],
)

= Поступательное движение твердого тела переменной массы. Уравнения И.В. Мещерского

#v(1em)

Масса меняется непрерывно.

#grid(
  columns: (1.5fr, 1fr),
  [
    $m(t + Delta t) = m(t) + Delta m_2 - Delta m_1 \
    Delta m = m(t + Delta t) - m(t) = -Delta m_1 + Delta m_2 \
    display((dif m)/(dif t) = lim_(Delta t -> 0) (Delta m)/(Delta t) = -lim_(Delta t -> 0) (Delta m_1)/(Delta t) + lim_(Delta t -> 0) (Delta m_2)/(Delta t) = \ = -(dif m_1)/(dif t) + (dif m_2)/(dif t)) \
    Delta ov(Q) = ov(Q)(t + Delta t) - ov(Q)(t) = ... = \ = m(t) Delta ov(V) - Delta m_1 (ov(V)_1 - ov(V)(t)) - Delta m_2 (ov(V)_2 - ov(V)(t)) - \ - Delta m_1 Delta ov(V) + Delta m_2 Delta ov(V)$
  ],
  [
    #figure(
      image("source-figures/lect7-2.png", width: 80%),
    )
  ],
)

$display((dif ov(Q))/(dif t) = lim_(Delta t -> 0) (Delta ov(Q))/(Delta t) = lim_(Delta t -> 0) m(t) (Delta ov(V))/(Delta t) + lim_(Delta t -> 0) ((Delta m_1)/(Delta t) (ov(V)_1 - ov(V)(t))) - lim_(Delta t -> 0) ((Delta m_2)/(Delta t) (ov(V)_2 - ov(V)(t))) - \ - lim_(Delta t -> 0) (Delta m_1 Delta ov(V))/(Delta t) + lim_(Delta t -> 0) (Delta m_2 Delta ov(V))/(Delta t) = m(t) lim_(Delta t -> 0) (Delta ov(V))/(Delta t) + (ov(V)_1 - ov(V)(t)) lim_(Delta -> 0) (Delta m_1)/(Delta t) - (ov(V)_2 - ov(V)(t)) lim_(Delta -> 0) (Delta m_2)/(Delta t)) \
ov(V)_1 - ov(V)(t) = ov(V)_(1r); ov(V)_2 - ov(V)(t) = ov(V)_(2r) \
(dif ov(Q))/(dif t) = ov(F)^((e)) => m(t) (dif ov(V))/(dif t) + (dif m_1)/(dif t) ov(V)_(1r) - (dif m_2)/(dif t) ov(V)_(2r) = ov(F)^((e))$

Уравнение Мещерского в случае одновременного отсоединения и присоединения частиц $ m(t) (dif ov(V))/(dif t) = ov(F)^((e)) - (dif m_1)/(dif t) ov(V)_(1r) + (dif m_2)/(dif t) ov(V)_(2r) $

Уравнение Мещерского в случае отсоединения частиц - уравнение реактивного движения $ Delta m_2 = 0 => (dif m_2)/(dif t) = 0; (dif m)/(dif t) = -(dif m_1)/(dif t) => m(t) (dif ov(V))/(dif t) = ov(F)^((e)) + (dif m)/(dif t) ov(V)_(1r) $

Уравнение Мещерского в случае присоединения частиц $ Delta m_1 = 0 => (dif m_1)/(dif t) = 0; (dif m)/(dif t) = (dif m_2)/(dif t) => m(t) (dif ov(V))/(dif t) = ov(F)^((e)) + (dif m)/(dif t) ov(V)_(2r) $

= Задача К.Э. Циолковского. Движение многоступенчатой ракеты

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    $display(
      cases(
        reverse: #true,
        delim: "|",
        ov(F)^((e)) = 0,
        V_(1r) = "const",
      )\, m(t) (dif ov(V))/(dif t) = (dif m)/(dif t) ov(V)_(1r)
    )$
  ],
  [
    #figure(
      image("source-figures/lect7-3.png", width: 80%),
    )
  ],
)

$(x): m(t) (dif V)/(dif t) = -(dif m)/(dif t) V_(1r) => integral dif V = -integral (dif m)/(m) V_(1r) => -V_(1r) ln m + C \
t = 0, V = V_0, m = m_0 => V_0 = -V_(1r) ln m_0 + C => C = V_0 + V_(1r) ln m_0 \
V = V_0 + (ln m_0 - ln m) V_(1r)$

$ V = V_0 + V_(1r) ln m_0/m - "Формула Циолковского" $

$V_0 = 0, V_k = V_(1r) ln m_0/m$

$ z = m_0/m_k - "Число Циолковского" $

$display(
  cases(
    reverse: #true,
    delim: "|",
    V_k = 8"км"/с,
    V_(1r) = "2,4""км"/с,
  ) V_k/V_(1r) = ln z => z = e^(V_k/V_(1r)) = e^(8/"2,4") = e^(10/3) approx 28
)$

*Многоступенчатая ракета*

#grid(
  columns: (1fr, 1fr),
  [
    $z = z_1 = z_2 = z_3; \
    V_1 = V_(1r) ln z; \
    V_2 = V_1 + V_(1r) ln z; \
    V_k = V_2 + V_(1r) ln z = 3V_(1r) ln z \
    V_k = 8 "км"/с, V_(1r) = "2,4""км"/с => z = e^(8/("2,4" dot 3)) = e^(10/9) approx 3$
  ],
  [
    #figure(
      image("source-figures/lect7-4.png", width: 43%),
      caption: [Схема многоступенчатой ракеты],
    ) <многоступ>
  ],
)
