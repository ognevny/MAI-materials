#import "@preview/physica:0.9.8": dv, evaluated, pdv
#import "meta.typ": conf, ov

#show: conf.with(
  titl: "Лекции по Теоретической механике",
  desc: "Конспект лекций Зародова В.К. по Теоретической механике",
  datet: datetime(year: 2026, month: 1, day: 2),
  head: [Лекции по Теоретической механике],
)

#outline()
#pagebreak(weak: true)

= Динамика

== Аксиомы динамики

#v(1em)

1. I закон Ньютона: существуют системы отсчёта, по отношению к которым материальная точка без действия сил либо покоится, либо движется равномерно и прямолинейно. Такая система отсчёта называется инерциальной (ИСО).

#grid(
  columns: (2.5fr, 1fr),
  [
    2. II закон Ньютона: в ИСО при действии на материальную точку силы она получает ускорение, направленное по линии действия силы и по величине ей пропорциональная.
    $ W ~ F, ov(W) = 1/m ov(F) $
  ],
  [
    #figure(
      image("source-figures/lect0-1-1.png", width: 80%),
    )
  ],
)

3. III закон Ньютона: 2 объекта взаимодействуют силами, имеющими общую линию действия, равные модули и противоположные направления.

4. Аксиома независимости действия сил: если в ИСО на материальную точку действуют несколько сил, то она получает ускорение, равное векторной сумме ускорений, получаемых при действии каждой силы по отдельности.

$
  ov(W) = ov(W)_1 + ov(W)_2 + ... + ov(W)_N = 1/m ov(F)_1 + 1/m ov(F)_2 + ... + 1/m ov(F)_N = 1/m (ov(F)_1 + ov(F)_2 + ... + ov(F)_N)
$ $ m ov(W) = sum_(i=1)^N ov(F) $

5. Принцип освобождаемости: несвободный объект можно считать свободным, заменив действие связей силами, называемыми реакциями связи.

$ov(W)_a = ov(W)_r + ov(W)_e + ov(W)_c \
m ov(W)_a = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k) \
m (ov(W)_r + ov(W)_e + ov(W)_c) = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k) \
m ov(W)_r = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k - ov(W)_e - ov(W)_c)$

Силы инерции: $ ov(Phi)_e = -m ov(W)_e, ov(Phi)_c = -m ov(W)_c $

$m ov(W)_r = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^N ov(R)_k + ov(Phi)_e + ov(Phi)_c)$

$ov(W)_c &= ov(W)_0 + [ov(epsilon); ov(rho)] + [ov(omega); [ov(omega); ov(rho)]] \
ov(W)_c &= -2m [ov(omega)_e; ov(V)_r]$

$ov(omega) = 0, ov(epsilon) = 0 => ov(Phi)_e = -m ov(W)_0, ov(Phi)_c = 0$

$ov(V)_r = 0, ov(W)_r = 0 => display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k + ov(Phi)_e = 0)$

#grid(
  columns: (2fr, 1fr),
  [
    $omega_e = "const" \
    "OM" = l \
    T, alpha - ?$

    $m ov(g) + ov(T) + ov(Phi)_e = 0 \
    ov(Phi)_e = -m ov(W)_e \
    Phi_e = m W_e = m omega^2 R = m omega^2 l sin(alpha) \
    display(
      cases(
        x\: 0 - T sin(alpha) + Phi_e = 0,
        y\: -m g + T cos(alpha) + 0 = 0,
      )
    ) \
    -T sin(alpha) + m omega^2 l sin(alpha) = 0$

    При $sin(alpha_1) = 0$: $T_1 = (m g)/cos(alpha_1) = m g$;

    при $sin(alpha_2) != 0$: $-T_2 cancel(sin(alpha_2)) + m omega^2 l cancel(sin(alpha_2)) = 0 => T_2 = m omega^2 l$

    $-m g + T_2 cos(alpha_2) = 0 => cos(alpha_2) = (m g)/T_2 = (m g)/(m omega^2 l) = g/(omega^2 l)$
  ],
  [
    #figure(
      image("source-figures/lect0-1-2.png", width: 70%),
    )
  ],
)

#v(1em)

#figure(
  image("source-figures/lect0-1-3.png", width: 40%),
  caption: [Динамика вращения Земли],
)

== Динамика механической системы (МС)

#v(1em)

МС называется совокупность материальных точек и твердых тел в рамках данной задачи. Центром масс МС называется точка (C) такая, что её радиус-вектор определяется по формулам: $ ov(r)_C = (display(sum_j) m_j ov(r)_j)/(display(sum_j) m_j) "или" ov(r)_C = (display(sum_j) ov(P)_j ov(r)_j)/(display(sum_j) ov(P)_j), $ где $ov(P)_j = m_j ov(g)$.

$display(M = sum_j m_j)$

$
  ov(V)_C = dv(ov(r)_C, t) = display(dv(, t) (sum_j m_j ov(r)_j)) / display(sum_j m_j) = display(sum_j m_j dv(ov(r)_j, t))/display(sum_j m_j) = (display(sum_j) m_j ov(V)_j)/M
$

$ ov(W)_C = dv(ov(V)_C, t) = (display(sum_j) m_j ov(W)_j)/M $

Внутренними силами называются силы взаимодействия между объектами данной МС, обозначается как $ov(F)^((i))$.

Внешними силами называются силы действия на объекты МС со стороны объектов, не включенных в данную МС, обозначаются как $ov(F)^((e))$.

=== Свойства внутренних сил

#v(1em)

$display(sum_j ov(F)_j^((i)) = 0)$

#grid(
  columns: (3fr, 1fr),
  [
    $ov(r)_B = ov(r)_A + ov("AB")$

    $ov(M)_B (ov(F)_A^((i))) + ov(M)_0 (ov(F)_B^((i))) = [ov(r)_A, ov(F)_A^((i))] + [ov(r)_B, ov(F)_B^((i))] = [ov(r)_A, ov(F)_A^((i))] + \
    + [ov(r)_A, ov(F)_B^((i))] + [ov(r)_A, ov(F)_A^((i)) + ov(F)_B^((i))] + [ov("AB"), ov(F)_B^((i))] \
    abs([ov("AB"), ov(F)_B^((i))]) = "AB" dot F_B^((i)) sin(angle(ov("AB"), ov(F)_B^((i)))) = "AB" dot F_B^((i)) sin(180 degree) = 0 \
    forall "т.O "display(sum_j ov(M)_0 (ov(F)_j^((i))) = 0)$
  ],
  [
    #figure(
      image("source-figures/lect0-1-4.png"),
    )
  ],
)

=== Количество движения МС

#v(1em)

Количеством движения точки называется вектор, равный произведению массы точки на её скорость $ ov(q)_j = m_j ov(V)_j $
Количеством движения МС называется векторная сумма количеств движений точек этой МС $ ov(Q) = display(sum_j) ov(q)_j = display(sum_j) m_j ov(V)_j $ $ ov(V)_C = (display(sum_j) m_j ov(V)_j)/M => ov(Q) = display(sum_j) m_j ov(V)_j $

==== Теорема об изменении вектора количества движения МС в дифференциальной форме

#v(1em)

$ dv(, t) ov(Q) = display(sum_j) ov(F)_j^((e)) $

$display(dv(ov(Q), t) = dv(, t) (sum_j m_j ov(V)_j) = sum_j dv(, t) (m_j ov(V)_j) = sum_j m_j dv(ov(V)_j, t) = sum_j m_j ov(W)_j = sum_j ov(F)_j^((e)) + sum_j ov(F)_j^((i)) = \ = sum_j ov(F)_j^((e)))$

==== Теорема об изменении вектора количества движения МС в интегральной форме

#v(1em)

Изменение вектора количества движения МС за время $tau$ равно векторной сумме импульсов внешних сил за это время

$ Delta ov(Q) = ov(Q) (tau) - ov(Q) (0) = sum_j ov(S)_(tau) (ov(F)_j^((e))) $

$dv(ov(Q), t) = display(sum_j ov(F)_j^((e))) \
dif ov(Q) = display((sum_j ov(F)_j^((e))) dif t) \
dif ov(Q) = display(sum_j (ov(F)_j^((e)) dif t) => integral_0^(tau) dif ov(Q) = integral_0^(tau) sum_j (F_j^((e)) dif t)) \
display(ov(Q) (tau) - ov(Q) (0) = sum_j ov(S)_(tau) (ov(F)_j^((e))))$

=== Движение центра масс

#v(1em)

$ov(Q) = M ov(V)_C; dv(ov(Q), t) = display(sum_j ov(F)_j^((e))\; M dv(ov(V)_C, t) = sum_j ov(F)_j^((e)))$

Теорема о движении центра масс: $ M ov(W)_C = sum_j ov(F)_j^((e)) $ Центр масс движется как материальная точка в предположении, что в нём сосредоточена масса МС, и к ней приложены все внешние силы. Если $display(sum_j ov(F)_j^((e)) = 0)$, то центр масс покоится, либо движется равномерно и прямолинейно.

Если $display(F_(j x)^((e)) = 0)$, то $W_(c x) = 0 => V_(c x) = "const"$, при этом при $t_0 = 0$ $V_(c x_0) = 0$.

Внутренние силы не влияют непосредственно на движение центра масс

=== Кинетический момент МС

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
  ],
)
Кинетическим моментом МС относительно центра называется векторная сумма $ov(K)_(j O)$.

==== Теорема об изменении кинетического момента МС относительно неподвижного центра

#v(1em)

$ dv(, t) ov(K)_(j O) = sum_j M_0 (ov(F)_j^((e))) $

$display(
  dv(ov(K)_(j O), t) = dv(, t) sum_j [ov(r)_j, m_j ov(V)_j] = sum_j dv(, t) [ov(r)_j, m_j ov(V)_j] = sum_j ([dv(ov(r)_j, t), m_j ov(V)_j] + [ov(r)_j, dv((m_j ov(V)_j), t)]) = \
  = sum_j (0 + ov(M)_0 (ov(F)_j^((e))))
) \
display(sum_j [ov(r)_j, dv((m_j ov(V)_j), t)] = sum_j [ov(r)_j, ov(F)_j^((e))] + sum_j [ov(r)_j, ov(F)_j^((i))] = sum_j ov(M)_0 (ov(F)_j^((e))) + cancel(sum_j ov(M)_0 (ov(F)_j^((i))))) \
ov(K)_0 = display(sum_j [ov(r)_j, m_j ov(V)_j] => dv(ov(K)_0, t) = sum_j ov(M)_0 (ov(F)_j^((e))))$

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

$[ov(r)_j, m_j ov(V)_j]_x = y_j m_j V_(j z) - z_j m_j V_(j y) \
[ov(r)_j, m_j ov(V)_j]_y = z_j m_j V_(j x) - x_j m_j V_(j z) \
[ov(r)_j, m_j ov(V)_j]_z = x_j m_j V_(j y) - y_j m_j V_(j x) \
x'_j = x_j, y'_j = y_j, z'_j != z_j => K_"O'Z'" = display(sum_j (x'_j m_j V_(j y) - y'_j m_j V_(j x)) = sum_j (x_j m_j V_(j y) - y_j m_j V_(j x)) = K_"OZ")$

==== Кинетический момент МС относительно оси

#v(1em)

Кинетическим моментом МС относительно оси называется проекция на эту ось вектора кинетического момента МС, вычисленного относительно любого центра, лежащего на этой оси $ K_"Ox" = "Пр"_"Ox" ov(K)_O $ Производная по времени от кинетического момента МС относительно неподвижной оси равна алгебраической сумме моментов внешних сил относительно этой оси $ dv(K_(O x), t) = sum_j M_(O x) (ov(F)_j^((e))) $

$display("Пр"_"Ox" dv(ov(K)_O, t) = "Пр"_"Ox" sum_j ov(M)_O (ov(F)_j^((e)))\; dv(, t) "Пр"_"Ox" ov(K)_O = sum_j "Пр"_"Ox" ov(M)_O (ov(F)_j^((e)))) \
"Пр"_"Ox" ov(K)_O = K_(O x); "Пр"_"Ox" ov(M)_O (ov(F)_j^((e))) = M_(O x) (ov(F)_j^((e)))$

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

$K_(O z) = J_z dot(phi); display(dv(K_(O z), t) = sum_j M_(O z) (ov(F)_j^((e)))\; J_z dot.double(phi) = sum_j M_(O z) (ov(F)_j^((e))))$

===== Осевые моменты инерции некоторых тел

#v(1em)

#grid(
  columns: (3fr, 1fr),
  [
    1. Тонкостенный цилиндр радиуса $R$ \
    $J_z = display(sum_j m_j d_j^2 = (sum_j m_j) R^2 = M R^2) => #rect[$J_z = M R^2$]$
  ],
  [
    #figure(
      image("source-figures/lect0-1-8.png", width: 50%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    2. Цилиндр радиуса $R$ и с толщиной стенок $H$ \
    $J_(d r) = m_(d r) r^2 \
    m_(d r) = M/(pi R^2 H) dot 2pi r^2 dif r dot H$ \
    $display(J_z = integral_0^R J_(d r) = integral_0^R M/R^2 2 dif r dot r^3 = 2 M/R^2 integral_0^R r^3 dif r = evaluated(2 M/R^2 r^4/4)_0^R = \ = #rect[$ 1/2 M R^2 $])$
  ],
  [
    #figure(
      image("source-figures/lect0-1-9.png", width: 70%),
    )
  ],
)

#grid(
  columns: (3fr, 1fr),
  [
    3. Стержень с осью вращения, проходящим через центр поперёк диска \
    $J_(d x) = m_(d x) x^2; m_(d x) = M/L dif x$ \
    $display(J_(c z) = integral J_(d x) = integral M/L dif x dot x^2 = M/L integral_(-L/2)^(L/2) x^2 dif x = evaluated(M/L x^3/3)_(-L/2)^(L/2) = M/L times \ times (L^3/24 - (-L^3/24)) = #rect[$ (M L^2)/12 $])$
  ],
  [
    #figure(
      image("source-figures/lect0-1-10.png"),
    )
  ],
)

#grid(
  columns: (2.5fr, 1fr),
  [
    3.1. Тот же стержень, но ось вращения находится на расстоянии $n$ от центральной \
    $n = L/2, J_"AZ'" = J_"CZ" + M n^2 => #rect[$ J_"AZ'" = 1/12 M L^2 + M (L/2)^2 = (M L^2)/3 $]$
  ],
  [
    #figure(
      image("source-figures/lect0-1-11.png", width: 85%),
    )
  ],
)

Радиус инерции: $ J_z = M rho^2, [rho] = м $

==== Кинетическая энергия МС

#v(1em)

Кинетической энергией МС называется сумма полупроизведений масс точек на квадраты их скоростей $ T = sum_j (m_j V_j^2)/2 $

===== Кинетическая энергия поступательного движения

#v(1em)

$display(forall j: ov(V)_j = ov(V)\, T = sum_j (m_j V_j^2)/2\, sum_j m_j = M)$

$ T = (M V^2)/2 $

===== Кинетическая энергия вращательного движения

#v(1em)

$display(V_j = omega d_j\, T = sum_j (m_j V_j^2)/2 = sum_j (m_j (omega d_j)^2)/2 = omega^2/2 sum_j m_j d_j^2)$

$ T = (J omega^2)/2 $

===== Кинетическая энергия плоскопараллельного движения

#v(1em)

#grid(
  columns: (2fr, 1fr),
  [
    $ov(V)_j = ov(V)_A + [ov(omega), ov(rho)_j] \
    display(T = 1/2 sum_j m_j (ov(V)_C + [ov(omega), ov(rho)_j])^2 = 1/2 sum_j m_j V_C^2 + 1/2 sum_j m_j [ov(omega), ov(rho)_j]) \
    display(
      1/2 sum_j m_j V_C^2 = 1/2 V_C^2 sum_j m_j = 1/2 M V_C^2\; \
      1/2 sum_j m_j [ov(omega), ov(rho)_j]^2 = 1/2 sum_j m_j omega^2 rho_j^2 = 1/2 omega^2 sum_j m_j rho_j^2 = 1/2 J_(C z) omega^2\; \
      1/2 sum_j m_j dot 2(ov(V)_C, [ov(omega), ov(rho)_j]) = (sum_j m_j ov(rho)_j; [ov(V)_C, ov(omega)]) = 0
    )$
  ],
  [
    #figure(
      image("source-figures/lect0-1-12.png"),
    )
  ],
)

$
  ov(r)_C = display(sum_j m_j ov(r)_j)/display(sum_j m_j); ov(rho)_C = display(sum_j m_j ov(rho)_j)/M => display(sum_j m_j ov(rho)_j = 0), "поскольку" ov(rho)_C = 0
$

Формула Кёнига $ T = (m V_C^2)/2 + (J_(O z) omega^2)/2 $

=== Работа силы

#v(1em)

Элементарная работа силы - скалярное произведение вектора силы на вектор элементарного перемещения точки её приложения.
#grid(
  columns: (3fr, 1fr),
  [
    $ov(V) = dv(ov(r), t), dif ov(r) = ov(V) dif t$
    #rect[$ dif' A = (ov(F), dif ov(r)) $]
    $dif' A = F dif r cos(angle(ov(F), ov(V))) = F_x dif x + F_y dif y + F_z dif z = (ov(F), ov(V)) dif t = \ = F V cos(ov(F), ov(V)) dif t = (F_x V_x + F_y V_y + F_z V_z) dif t$
  ],
  [
    #figure(
      image("source-figures/lect0-1-13.png"),
    )
  ],
)

==== Мощность силы в данный момент времени

#v(1em)

$ N = (ov(F), ov(V)), dif' A = N dif t $

==== Полная работа силы

#v(1em)

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

==== Теорема об изменении кинетической энергии МС в дифференциальной форме

#v(1em)

Дифференциал кинетической энергии МС равен сумме элементарных работ сил, приложенных к точкам этой системы $ dif T = sum_j dif' A (ov(F)_j) $

Доказательство:

$display(T = sum_j (m_j V_j^2) = sum_j m_j/2 (ov(V)_j, ov(V)_j)) \
display(dif T = sum_j m_j/2 dif(ov(V)_j, ov(V)_j) = sum_j m_j/2 ((dif ov(V)_j, ov(V)_j) + (ov(V)_j, dif ov(V)_j)) = sum_j m_j (d ov(V)_j, dv(ov(r), t)) = \ = sum_j (m_j ov(W)_j, dif ov(r)_j) = sum_j (ov(F)_j, dif ov(r)_j) = sum_j dif' A (ov(F)_j))$

В этой теореме в общем случае учитываются элементарные работы как внешних, так и внутренних сил.

==== Теорема об изменении кинетической энергии МС в интегральной форме

#v(1em)

Изменение кинетической энергии МС, прошедшим перемещение точек из положения (1) в положение (2) равно сумме полных работ сил при перемещении $ Delta T = T_((2)) - T_((1)) = sum_j A_((1))^((2)) (ov(F)_j) $

Доказательство

$display(integral_((1))^((2)) dif T = integral_((1))^((2)) sum_j dif' A (ov(F)_j)\; T bar.v_((1))^((2)) = sum_j integral_((1))^((2)) dif' A (ov(F)_j) => T_((2)) - T_((1)) = sum_j A_((1))^((2)) (ov(F)_j))$

$dif' A$ - величина порядка дифференциала.

=== Потенциальное поле сил (ППС) <ППС>

#v(1em)

Поле сил называется потенциальным, если существует некая функция $U$, зависящая от координат ($exists U(x, y, z, ..., x_n, y_n, z_n)$), такая что выполняется уравнение $ F_(j x) = pdv(U, x_j), F_(j y) = pdv(U, y_j), F_(j z) = pdv(U, z_j) $ для $j = 1...n$. Соответственно $U$ - силовая функция.

$display(sum_j dif' A (ov(F)_j) = sum_j (F_(j x) dif x_j + F_(j y) dif y_j + F_(j z) dif z_j) = sum_j (pdv(U, x_j) dif x_j + pdv(U, y_j) dif y_j + pdv(U, z_j) dif z_j) = dif U) \
display(dif T = sum_j dif' A (ov(F)_j) = dif U) \
display(Delta T = integral_((1))^((2)) dif U = U_((2)) - U_((1)) = Delta U)$

В ППС полная работа не зависит от траектории перемещения точек

==== Потенциальная энергия

#v(1em)

Обозначается как $Pi$

$dif Pi = -dif U; dif T = -dif Pi \
Delta T = -Delta Pi = Pi_((1)) - Pi_((2)) \
T_((2)) - T_((1)) = Pi_((1)) - Pi_((2)) \
T_((2)) + Pi_((2)) = T_((1)) + Pi_((1))$

==== Интеграл энергии

#v(1em)

$ E = T + Pi = h = "const", $ соответственно полная энергия $E = T + Pi$.

==== Сумма работ элементарных работ сил, приложенных к твердому телу

#v(1em)

1. Поступательное движение ($forall j: ov(V)_j = ov(V)$)

$display(dif' A = sum_j (ov(F)_j, ov(V)) dif t = (sum_j ov(F)_j^((e)) + cancel(sum_j ov(F)_j^((i))), ov(V)) dif t = (sum_j ov(F)_j^((e)), ov(V)) dif t)$

$ dif ov(r) = ov(V) dif t => sum_j dif' A = (ov(F)_j^((e)), dif ov(r)) $

2. Вращательное движение ($ov(V)_j = [ov(omega), ov(r)_j]$)

$display(sum_j dif' A = sum_j (ov(F)_j, ov(V)_j) dif t = sum_j (ov(F)_j, [ov(omega), ov(r)_j]) dif t = (ov(omega), sum_j ov(M)_O (ov(F)_j^((e)))) dif t) \
display(sum_j dif' A = sum_j M_z (ov(F)_j^((e))) omega dif t); omega = dv(phi, t) => dif phi = omega dif t$

$ sum_j dif' A = sum_j M_z (ov(F)_j^((e))) dif phi $

#grid(
  columns: (3fr, 1fr),
  [
    3. Плоскопараллельное движение

    $display(sum_j dif' A = sum_j (ov(F)_j, ov(V)_j) dif t = sum_j (ov(F)_j, ov(V)_A) dif t + sum_j (ov(F)_j, [ov(omega), ov(rho)]) dif t = \ = (sum_j ov(F)_j^((e)) + cancel(sum_j ov(F)_j^((i))); ov(V)_A) dif t + sum_j (ov(omega), [ov(rho)_j, ov(F)_j^((e)) + ov(F)_j^((i))]) dif t = \ = (ov(omega), sum_j [ov(rho)_j, ov(F)_j^((e))]) dif t + (ov(omega), sum_j [ov(rho)_j, ov(F)_j^((i))]) dif t) \
    [ov(rho)_j, ov(F)_j^((e))] = ov(M)_A (ov(F)_j^((e))), [ov(rho)_j, ov(F)_j^((i))] = ov(M)_A (ov(F)_j^((i))) \
    display(sum_j dif' A (ov(F)_j) = (ov(omega), ov(r)_j ov(M)_A (ov(F)_j^((e)))) dif t = M_(A ov(omega)) (ov(F)_j^((e))) omega dif t)$
  ],
  [
    #figure(
      image("source-figures/lect0-1-16.png", width: 160%),
    )
  ],
)

$ sum_j dif' A (ov(F)_j) = ov(F)_j^((e)) V_A dif t + sum_j M_(A ov(omega)) (ov(F)_j^((e))) dif phi $

== Идеальные связи

#v(1em)

Идеальными связями называются связи, для которых сумма элементарных работ их реакций равна 0 на любых элементарных перемещениях, допускаемых связями $ forall dif ov(r)_j: sum_j (ov(R)_j, dif ov(R)_j) = 0 $

$dif' A_j = (ov(F)_j, ov(N)_j) dif t$

#grid(
  columns: (2fr, 1fr),
  [
    === Гладкая поверхность

    #v(1em)

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
    === Неподвижный шарнир

    #v(1em)

    #rect[$ ov(V)_O = 0; dif' A = (ov(R), ov(V)_O) dif t = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-18.png", width: 60%),
    )
  ],
)

=== Нерастяжимая невесомая нить

#v(1em)

#figure(
  image("source-figures/lect0-1-19.png", width: 50%),
)
$ov(T)_B = -ov(T)_A, "Пр"_ov("AB") ov(V)_A = "Пр"_ov("AB") ov(V)_B \
dif' A = (ov(T)_A, ov(V)_A) dif t + (ov(T)_B, ov(V)_B) dif t = (ov(T)_A, ov(V)_A) dif t + (-ov(T)_A, ov(V)_B) dif t = (ov(T)_A, ov(V)_A - ov(V)_B) dif t = \ = T_A V_A cos(angle(ov(T)_A, ov(V)_A)) - (ov(T)_A, ov(V)_B) dif t = T_A V_A cos(alpha) + T_B V_B cos(gamma) = 0$

#grid(
  columns: (2fr, 1fr),
  [
    === Качение без скольжения по неподвижной поверхности

    #rect[$ V_P = 0 - "М.Ц.С"; dif' A (ov(R)) = (ov(R), ov(V)_P) dif t = 0 $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-20.png", width: 55%),
    )
  ],
)

== Потенциальные силы

#v(1em)

Было повторно разобрана теория ППС, смотрите раздел "Потенциальное поле сил (ППС)"

=== Примеры потенциальных сил

#v(1em)

1. Однородное поле силы тяжести

$ Pi = m g z $

#grid(
  columns: (1fr, 1fr),
  align: horizon,
  [
    2. Упругая пружина
    @пружины, слева: #rect[$ Pi = (C (Delta l)^2)/2 $]
    @пружины, справа: #rect[$ Pi = (C (Delta phi)^2)/2 $]
  ],
  [
    #figure(
      image("source-figures/lect0-1-21.png"),
      caption: [],
    ) <пружины>
  ],
)

== Механические системы (МС)

=== Движение МС относительно центра масс

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

$ov(rho)_c = 0 => display(sum_j) m_j ov(rho)_j = 0 \
display(
  cases(
    ov(K)'_c = sum_j [ov(rho)_j, m_j ov(V)_(j z)],
    ov(K)_O = sum_j [ov(r)_j, m_j ov(V)_(j a)]
  )
) \
ov(K)_O = display(sum_j [ov(r)_c + ov(rho)_j; m_j (ov(V)_(j r)+ ov(V)_(j e))]) \
display(sum_j [ov(r)_c; m_j ov(V)_(j z)] = [ov(r)_c; sum_j m_j ov(V)_(j z)] = 0) \
display(sum_j [ov(rho)_j, m_j ov(V)_(j z)] = ov(K)'_c) \
display(sum_j [ov(r)_c, m_j ov(V)_(j e)] = [ov(r)_c, sum_j (m_j) ov(V)_c]) \
display(sum_j [ov(rho)_j, m_j ov(V)_(j e)] = [sum_j m_j ov(rho)_j, ov(V)_c] = 0) \
ov(V)_c = display(sum_j (m_j ov(V)_j)/M), ov(V)_(c r) = display((sum_j m_j ov(V)_(j r))/M) = 0 => display(sum_j m_j ov(V)_(j r)) = 0$

$ ov(K)_O = ov(K)'_c + [ov(r)_c; (sum_j m_j) ov(V)_c] $

==== Теорема об изменении кинетического момента МС в движении относительно центра масс

#v(1em)

Производная по времени от кинетического момента МС в движении относительно центра масс равна векторной сумме моментов внешних сил относительно центра масс

$ dv(ov(K)_c, t) = sum_j ov(M)_c (ov(F)_j^((e))) = sum_j [ov(rho)_j, ov(F)_j^((e))] $

Доказательство

$display(dv(ov(K)_O, t) = sum_j ov(M)_O (ov(F)_j^((e))) = sum_j [ov(r)_j, ov(F)_j^((e))]), ov(r)_j = ov(r)_c + ov(rho)_j \
display(dv(ov(K)_O, t) = sum_j [ov(r)_c, ov(F)_j^((e))] + sum_j [ov(rho)_j, ov(F)_j^((e))] = [ov(r)_c, sum_j ov(F)_j^((e))] + sum_j ov(M)_c (ov(F)_j^((e)))\; dv(ov(K)_O, t) = [ov(r)_c; M ov(W)_c] + \ + sum_j ov(M)_c (ov(F)_j^((e)))) \
display(M ov(W)_c = sum_j ov(F)_j^((e))) \
display(dv(ov(K)_O, t) = dv(ov(K)_c, t) + [dv(ov(r)_c, t), M ov(V)_c] + [ov(r)_c, dv(, t) (M ov(V)_c)] = dv(ov(K)_c, t) + [ov(r)_c, M ov(W)_c]) \
display(dv(ov(K)_c, t) + cancel([ov(r)_c, M ov(W)_c]) = cancel([ov(r)_c; M ov(W)_c]) + sum_j ov(M)_c (ov(F)_j^((e))))$

=== ДУ плоскопараллельного движения твердого тела (@плоскопараллел)

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    #rect[$
      cases(
        M ov(W)_c = display(sum_j ov(F)_j^((e))),
        display(dv(ov(K)_O, t) = sum_j ov(M)_c (ov(F)_j^((e)))),
      )
    $]
    $x': ov(K)'_c = J_(c z') ov(omega) \
    y': display(M dot.double(X)_c = sum_j F_(j x)^((e))) \
    z': display(J_(c z) dot dv(omega, t) = J_(c z) dot.double(phi) = sum_j M_(c z') (ov(F)_j^((e))))$
  ],
  [
    #figure(
      image("source-figures/lect2-fig3.png", width: 80%),
      caption: [],
    ) <плоскопараллел>
  ],
)

=== Принцип д'Аламбера

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

Для МС: если к действующим на точки МС активным силам и реакциям связей добавить Даламберовы силы инерции, то полученная система сил будет уравновешенной

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

==== Главный вектор сил инерции д'Аламбера

#v(1em)

$display(M ov(W)_c = sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e))) \
display(ov(Phi) = sum_j ov(Phi)_j = -(sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e))) = -M ov(W)_c)$

$ ov(Phi) = -M ov(W)_c $

==== Главный момент сил инерции д'Аламбера

#v(1em)

$display(dv(ov(K)_O, t) = sum_j ov(M)_O (ov(F)_j^((e))) + sum_j ov(M)_O (ov(R)_j^((e)))) \
display(ov(M)_O^(Phi) = sum_j ov(M)_O (ov(Phi)_j) = -(sum_j ov(M)_O (ov(F)_j^((e))) + sum_j ov(M)_O (ov(R)_j^((e)))))$

$ ov(M)_O^(Phi) = -dv(ov(K)_O, t) $

$display(ov(M)_C^(Phi) = sum_j ov(M)_C (ov(Phi)_j)) \
display(dv(ov(K)'_C, t) = sum_j ov(M)_C (ov(F)_j^((e))) + sum_j ov(M)_C (ov(R)_j^((e))))$

$ ov(M)_C^(Phi) = -dv(ov(K)'_C, t) $

==== Пример задачи на принцип д'Аламбера

#v(1em)

#grid(
  columns: (1fr, 2fr),
  column-gutter: 1em,
  [
    #figure(
      image("source-figures/lect2-fig8.png", width: 100%),
    )
  ],
  [
    Дано: $omega = "const"$, $"OA" = l$ \
    Найти: $alpha$, $T$

    $R = l sin(alpha) \
    ov(Phi) = -m ov(W), Phi = M W = m omega^2 R = m omega^2 l sin(alpha) \
    m ov(g) + ov(T) + ov(Phi) = 0 \
    display(
      cases(
        x\: 0 - T sin(alpha) + Phi = 0\; T sin(alpha) - m omega^2 l sin(alpha) = 0,
        y\: -m g + T cos(alpha) + 0 = 0\; T cos(alpha) = m g,
      )
    )$

    1. $sin(alpha) = 0, T_1 = m g$
    2. $sin(alpha) != 0, T_2 = m omega^2 l, T_2 cos(alpha) = m g$, \
      $cancel(m) omega^2 l cos(alpha) = cancel(m) g => cos(alpha) = g/(omega^2 l) < 1$
  ],
)

= Введение в аналитическую механику

== Классификация связей

#v(1em)

Связями будем называть ограничения на положения и скорости объектов МС. Уравнение связи:

$ f(x, y, z, dot(x), dot(y), dot(z), t) = 0 space (>= 0) $

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
    dv(x_c, t) = dv(phi, t) R \
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

== Виртуальные перемещения

#v(1em)

$f(x, y, z, dot(x), dot(y), dot(z), t) = 0 \
f(x, y, z, t) = 0 \
dif f = pdv(f, x) dif x + pdv(f, y) dif y + pdv(f, z) dif z$

$delta f = pdv(f, x) delta x + pdv(f, y) delta y + pdv(f, z) delta z$ - вариация функции ($t = "const"$)

$ov(r) = (x, y, z, t) \
dif ov(r) = pdv(ov(r), x) dif x + pdv(ov(r), y) dif y + pdv(ov(r), z) dif z + pdv(ov(r), t) dif t "- элементарное перемещение"$

Виртуальное перемещение $ delta ov(r) = pdv(ov(r), x) delta x + pdv(ov(r), y) delta y + pdv(ov(r), z) delta z $

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

=== Уточненное определение идеальной связи

#v(1em)

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

При идеальных связях сумма виртуальных работ активных сил и сил инерций д'Аламбера равна 0

=== Обобщенные координаты, скорости и силы

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

Общее уравнение аналитической динамики (принцип д'Аламбера/Лагранжа) $ sum_(alpha) (ov(F)_(alpha), delta ov(r)_(alpha)) + sum_(alpha) (ov(Phi)_(alpha), delta ov(r)_(alpha)) = 0 $

Обобщенными координатами называются независимые параметры, которые полностью определяют положение всех точек МС - $q_1, ..., q_n$. Обобщенной скоростью называется производная по времени от обобщенной координаты.

$ f_k (x_1, y_1, z_1, ..., x_N, y_N, z_N, t) = 0 $

$k = 1...K$\
$n = 3N - K$

$dot(q)_i = dv(q_i, t)$

#grid(
  columns: (1fr, 1fr),
  [
    $ov(r)_j (x_j, y_j, z_j)$

    $x_j =& x_j (q_1, ..., q_n, t) \
    y_j =& y_j (q_1, ..., q_n, t) \
    z_j =& z_j (q_1, ..., q_n, t)$
  ],
  [
    $ov(r)_j &= ov(r)_j (q_1, ..., q_n, t) \
    ov(V)_j &= dv(ov(r)_j, t) = pdv(ov(r)_j, q_1) dot dv(q_1, t) + ... + pdv(ov(r)_j, q_n) dot dv(q_n, t) + pdv(ov(r)_j, t) = \
    &= display(sum_(i=1)^n pdv(ov(r)_j, q_i) dot(q_i) + pdv(ov(r)_j, t)) \
    delta ov(r)_j &= pdv(ov(r)_j, q_1) delta q_1 + ... + pdv(ov(r)_j, q_n) delta q_n$
  ],
)

Числом степеней свободы МС называется число независимых вариаций обобщенных координат. В голономных системах число степеней свободы совпадает с числом обобщенных координат. Голономные МС называется МС, на которые наложены только голономные связи.

$
  delta A = sum_j (ov(F)_j, delta ov(r)_j) = sum_j (ov(F)_j, sum_(i=1)^n pdv(ov(r)_j, q_i) delta q_i) = sum_j sum_(i=1)^n (ov(F)_j, pdv(ov(r)_j, q_i)) delta q_i = \ = sum_(i=1)^n sum_j (ov(F)_j, pdv(ov(r)_j, q_i)) delta q_i = sum_(i=1)^n delta q_i sum_j (ov(F)_j, pdv(ov(r)_j, q_i))
$

=== Обобщенные силы

#v(1em)

Обобщенными силами ($Q_i$) называются множители в выражении для суммы виртуальных работ активных сил при вариациях обобщенных координат

$ Q_i = sum_j (ov(F)_j, pdv(ov(r)_j, q_i)) $

==== Способы вычисления обобщенных сил

#v(1em)

1. По определению $ Q_i = sum_j (ov(F)_j, pdv(ov(r)_j, q_i)) = sum_j (F_(j x) pdv(x_j, q_i) + F_(j y) pdv(y_j, q_i) + F_(j z) pdv(z_j, q_i)) $

2. Для голономных систем

$delta q_i - "независимы" \
delta q_1 > 0; delta q_2 = ... = delta q_n = 0 \
delta A_((1)) = display(sum_j (ov(F)_j, delta ov(r)_j^((1)))); delta A_((1)) = display(sum_(i=1)^n Q_i delta q_i = Q_1 delta q_1)$

3. Для потенциальных сил

$Pi(x_1(q_1, ..., q_n), y_1(q_1, ..., q_n), ..., z_N (q_1, ..., q_n)) \
display(pdv(Pi, q_1) = pdv(Pi, x_1) dot pdv(x_1, q_1) + pdv(Pi, y_1) dot pdv(y_1, q_1) + ... + pdv(Pi, z_N) dot pdv(z_N, q_1) = sum_j (pdv(Pi, x_j) dot pdv(x_j, q_1) + pdv(Pi, y_j) dot pdv(y_j, q_1) + pdv(Pi, z_j) dot pdv(z_j, q_1))) \
F_(j x) = -pdv(Pi, x_j); F_(j y) = -pdv(Pi, y_j); F_(j z) = -pdv(Pi, z_j)$

$display(Q_i = sum_j (F_(j x) pdv(x_j, q_i) + F_(j y) pdv(y_j, q_i) + F_(j z) pdv(z_j, q_i)) = sum_j (-pdv(Pi, x_j) dot pdv(x_j, q_i) - pdv(Pi, y_j) dot pdv(y_j, q_i) - pdv(Pi, z_j) dot pdv(z_j, q_i)) = -pdv(Pi, q_i))$

$ Q_i = -pdv(Pi, q_i) $

4. Обобщенные силы инерции

$ov(Phi)_j = -m_j ov(W)_j \
display(delta A^(Phi) = sum_j (ov(Phi)_j, delta ov(r)_j) = -sum_j m_j (ov(W)_j, delta ov(r)_j) = sum_(i=1)^n Q_i^(Phi) delta q_i)$\
$Q_i^(Phi)$ - обобщенные силы инерции

$display(delta ov(r)_j = sum_(i=1)^n pdv(ov(r)_j, q_i) delta q_i) \
display(ov(V)_j = dv(ov(r)_j, t) = sum_(i=1)^n pdv(ov(r)_j, q_i) dot(q_i))$

$n = 1, q_1 = q \
delta ov(r)_j = pdv(ov(r)_j, q) delta q \
ov(V)_j = pdv(ov(r)_j, q) dot(q) \
pdv(ov(V)_j, dot(q)) = pdv(ov(r)_j, q) quad (**) \
ov(V)_j = dv(ov(r)_j, t); pdv(ov(V)_j, q) = dv(, t) pdv(ov(r)_j, q) quad (*) \
V_j^2 = (ov(V)_j, ov(V)_j) \
pdv(, q) V_j^2 = pdv(, q) (ov(V)_j, ov(V)_j) = (pdv(ov(V)_j, q), ov(V)_j) + (ov(V)_j, pdv(ov(V)_j, q)) = 2(ov(V)_j, pdv(ov(V)_j, q)) quad (****) \
pdv((V_j)^2, dot(q)) = 2(ov(V)_j, pdv(ov(V)_j, dot(q))) quad (***) \
(ov(W)_j, delta ov(r)_j) = (dv(ov(V)_j, t), pdv(ov(r)_j, q)) delta q = \
= display(dv(, t) (ov(V)_j, overparen(pdv(ov(r)_j, q), (**))) - (ov(V)_j, overparen(dv(, t) (pdv(ov(r)_j, q)), (*))) = dv(, t) overparen((ov(V)_j, pdv(ov(V)_j, dot(q))), (***)) - overparen((ov(V)_j, pdv(ov(V)_j, q)), (****)) = 1/2 dv(, t) (pdv((V_j)^2, dot(q))) - 1/2 pdv((V_j)^2, q)) \
display(
  delta A^(Phi) = -sum_j m_j (ov(W)_j, delta ov(r)_j) delta q = -{sum_j 1/2 m_j dv(, t) (pdv((V_j)^2, dot(q))) - sum_j 1/2 m_j pdv((V_j)^2, q)} delta q = -delta q times \ times {sum_j dv(, t) (pdv((1/2 m_j V_j^2), dot(q))) - sum_j pdv(, q) (1/2 m_j V_j^2)} = -delta q {dv(, t) pdv(, dot(q)) (sum_j (m_j V_j^2)/2) - pdv(, q) (sum_j 1/2 m_j V_j^2)} = \ = -delta q {dv(, t) pdv(T, dot(q)) - pdv(T, q)}
); quad delta A^(Phi) = Q^(Phi) delta q$

$ Q^(Phi) = -{dv(, t) pdv(T, dot(q)) - pdv(T, q)} $

По аналогии с системами с n степенями свободы

$ Q_i^(Phi) = -{dv(, t) pdv(T, dot(q)_i) - pdv(T, q_i)} $

=== Уравнение Лагранжа II рода

#v(1em)

Основное уравнение аналитической механики (принцип Лагранжа-д'Аламбера) $ sum_j (ov(F)_j, delta ov(r)_j) + sum_j (ov(Phi)_j, delta ov(r)_j) = 0 $

Вывод уравнения Лагранжа II рода:

$display(sum_(i=1)^n Q_i delta q_i + sum_(i=1)^n Q_i^(Phi) delta q_i = 0) \
display(sum_(i=1)^n (Q_i + Q_i^(Phi)) delta q_i = 0)$

$delta q_i - "независимы" \
Q_i + Q_i^(Phi) = 0 space (i = 1...n) \
Q_i - display({dv(, t) pdv(T, dot(q)_i) - pdv(T, q_i)}) = 0$

$ dv(, t) pdv(T, dot(q)_i) - pdv(T, q_i) = Q_i; i = 1...n $

$Q_i = -pdv(Pi, q_i)$

$ dv(, t) pdv(T, dot(q)_i) - pdv(T, q_i) = -pdv(Pi, q_i) $

==== Уравнение Лагранжа II рода в потенциальном поле сил

#v(1em)

$ L = T - Pi "- Лагранжиан" $

$display(pdv(Pi, dot(q)_i) = 0 => pdv(L, dot(q)_i) = pdv(T, dot(q)_i)\; dv(, t) pdv(T, dot(q)_i) - pdv(, q_i) (T - Pi) = 0)$

$ dv(, t) pdv(L, dot(q)_i) - pdv(L, q_i) = 0 $

=== Уравнения равновесия в МС

#v(1em)

$n -> q_1, ..., q_n \
delta A = display(sum_j (ov(F)_j, delta ov(r)_j)) = 0\
delta A = display(sum_(i=1)^n Q_i delta q_i) = 0 \
delta q_i - "независимы" => Q_i = 0 space (i = 1...n) - "уравнение равновесия голономных систем" \
Q_i = -pdv(Pi, q_i) \
pdv(Pi, q_i) = 0 => q_i^*, i = 1...n - "положение равновесия" \
x_i = q_i - q_i^* - "возмущение" \
x_(i O) = q_(i O) - q_i^* space (t_0 = 0) => dot(x)_(i O) = dot(q)_(i O)$

Положение равновесия считаем устойчивым, если при всех достаточно малых начальных возмущениях по координатам и скоростям МС остается в заданной малой окрестности положения равновесия.

==== Теорема Лагранжа-Дирихле

#v(1em)

Если в положении равновесия консервативной МС потенциальная энергия имеет изолированный минимум, то положение равновесия является устойчивым.

#figure(
  image("source-figures/lect5-2.png", width: 40%),
)

Если в положении равновесия потенциальная энергия имеет максимум, то положение равновесия неустойчиво.

==== Нахождение положения равновесия при одной степени свободы

#v(1em)

$n = 1 \
pdv(Pi, q) = 0 => q^* \
pdv(Pi, q, 2) bar.v_(q^*) = cases(> 0 - min - "устойчивый", < 0 - max - "неустойчивый")$

=== Малые колебания для систем с одной степенью свободы

#v(1em)

Структура выражения кинетической энергии как функции обобщенной скорости

$n &= 1\
T &= display(sum_j (m_j V_j^2)/2) \
ov(V)_j &= dv(ov(r)_j, t) = pdv(ov(r)_j, q) dot(q) + pdv(ov(r)_j, t) \
T &= display(sum_j m_j/2 (dv(ov(r)_j, t) = pdv(ov(r)_j, q) dot(q) + pdv(ov(r)_j, t))^2 = sum_j m_j/2 (pdv(ov(r)_j, q) dot(q))^2 + sum_j m_j/2 dot 2(pdv(ov(r)_j, q), pdv(ov(r)_j, t)) dot(q) + sum_j m_j/2 (pdv(ov(r)_j, t))^2 = \ &= 1/2 dot(q)^2 sum_j (pdv(ov(r)_j, q))^2 + dot(q) sum_j m_j (pdv(ov(r)_j, q), pdv(ov(r)_j, t)) dot(q) + 1/2 sum_j m_j (pdv(ov(r)_j, t))^2)$

#grid(
  columns: (1cm, 6cm, 3cm),
  align: center + horizon,
  [
    $ov(r)_j (q, t)$
  ],
  [
    $
      a (q, t) & = sum_j m_j (pdv(ov(r)_j, t))^2 \
      b (q, t) & = sum_j m_j (pdv(ov(r)_j, q), pdv(ov(r)_j, t)) \
      d (q, t) & = 1/2 sum_j m_j (pdv(ov(r)_j, t))^2
    $
  ],
  [
    $
      T_2 & = 1/2 a(q, t) dot(q)^2 \
      T_1 & = b(q, t) dot(q) \
      T_0 & = d(q, t)
    $
  ],
)

$T = 1/2 a(q, t) dot(q)^2 + b(q, t) dot(q) + d(q, t)$

Стационарные связи:

$ov(r)_j (q), pdv(ov(r)_j, t) = 0, T = T_2 = 1/2 a(q) dot(q)^2$

Свободными колебаниями называется движение под действием только потенциальных сил

$x = q - q^* \
abs(x) << 1 \
"Стационарные связи" T = 1/2 a(q) dot(q)^2$

$a(q) = q(q^*) + evaluated(pdv(a, q))_(q^*)(q - q^*) + ... \
a^* = a(q^*) \
x = q - q^*, dot(x) = dot(q) => T approx 1/2 a^* dot(x)^2 \
Pi(q) = Pi(q^*) + evaluated(pdv(Pi, q))_(q^*)(q - q^*) + 1/2! evaluated(pdv(Pi, q, 2))_(q^*)(q - q^*) + ...$

$pdv(Pi, q) bar.v_(q^*) = 0; Pi(q^*) = Pi^*; pdv(Pi, q, 2) bar.v_(q^*) = c^* > 0 \
Pi approx Pi^* + 1/2 c^* x^2 \
dv(, t) (pdv(T, dot(x))) - pdv(T, x) = -pdv(Pi, x) \
pdv(T, dot(x)) = 1/2 a^* dot 2 dot(x) = a^* dot(x); pdv(T, x) = 0; pdv(Pi, x) = 1/2 c^* dot 2x = c^* x \
dv(, t) (pdv(T, dot(x))) = a^* dot.double(x) \
a^* dot.double(x) - 0 = -c^* x$

Уравнение свободных малых колебаний $ a^* dot.double(x) + c^* x = 0 $

$a^* > 0, c^* > 0 \
dot.double(x) + c^* / a^* x = 0, k^2 = c^* / a^* > 0 \
dot.double(x) + k^2 x = 0 \
x = c e^(lambda t), dot(x) = c lambda e^(lambda t), dot.double(x) = c lambda^2 e^(lambda t) \
lambda^2 c e^(lambda t) + k^2 c e^(lambda t) = 0 <=> lambda^2 = -k^2 <=> lambda_(1,2) = plus.minus i k \
x = tilde(C)_1 e^(i k t) + tilde(C)_2 e^(-i k t) = tilde(C)_1 (cos(k t) + i sin(k t)) + tilde(C)_2 (cos(-k t) + i sin(k t)) = \ = (tilde(C)_1 + tilde(C)_2) cos(k t) + i(tilde(C)_1 - tilde(C)_2) sin(k t) \
C_1 = tilde(C)_1 + tilde(C)_2, C_2 = (tilde(C)_1 - tilde(C)_2) i => x = C_1 cos(k t) + C_2 sin(k t) \
x = sqrt(C_1^2 + C_2^2) (C_1/sqrt(C_1^2 + C_2^2) cos(k t) + C_2/sqrt(C_1^2 + C_2^2) sin(k t)) \
display(
  cases(
    reverse: #true,
    delim: "|",
    sin(epsilon) = C_1/sqrt(C_1^2 + C_2^2),
    cos(epsilon) = C_2/sqrt(C_1^2 + C_2^2),
  )
) => x = sqrt(C_1^2 + C_2^2) (sin(epsilon) cos(k t) + cos(epsilon) sin(k t)) = sqrt(C_1^2 + C_2^2) sin(k t + epsilon)$

$ A = sqrt(C_1^2 + C_2^2) - "Амплитуда", x = A sin(k t + epsilon), $

где $k$ - (круговая) частота колебаний, $k t + epsilon$ - фаза колебаний, $epsilon$ - начальная фаза

#figure(
  image("source-figures/lect5-6.png", width: 60%),
  caption: [График зависимости координаты тела, колеблющегося свободно; $tau = (2pi)/k$],
)

=== Малые колебания МС при наличии силы сопротивления

#v(1em)

В качестве силы сопротивления рассматривается сила вязкого трения

#grid(
  columns: (2fr, 1fr),
  [
    $ov(F)_j = -beta_j ov(V)_j, beta_j > 0 \
    delta A = display(sum_j (ov(F)_j, delta ov(r)_j)) \
    delta ov(r)_j = pdv(ov(r)_j, q) delta q; ov(V)_j = pdv(ov(r)_j, q) dot(q) \
    delta A = display(sum_j (-beta_j pdv(ov(r)_j, q) dot(q), pdv(ov(r)_j, q) q) = -(sum_j beta_j (pdv(ov(r)_j, q))^2) dot(q) delta q) \
    b_j (q) = display(sum_j beta_j (pdv(ov(r)_j, q))^2) > 0 \
    b_j (q) = b_j (q^*) + pdv(b_j, q) (q- q^*) + ... approx b_j (q^*) = b^* > 0 \
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
X = tilde(C)_1 e^((-n + i k_1) t) + tilde(C)_2 e^((-n - i k_1) t) = e^(-n t) (tilde(C)_1 e^(i k_1 t) + tilde(C)_2 e^(- i k_1 t) = A e^(n t) sin(k_1 t + epsilon)$

#grid(
  columns: (1.5fr, 1fr),
  [
    $x -> 0 "при" t -> oo$
    #rect[$ tau_1 = (2pi)/k_1 - "период затухающих колебаний" $]
  ],
  [
    #figure(
      image("source-figures/lect6-1.png"),
    )
  ],
)

#grid(
  columns: (1fr, 1fr),
  [
    $n > k: \
    x -> 0 "при" t -> oo$
  ],
  [
    #figure(
      image("source-figures/lect6-2.png", width: 70%),
      caption: [Затухающие колебания в случае $n > k$],
    )
  ],
)

==== Малые колебания МС с одной степенью свободы при наличии гармонической вынуждающей силы

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
) -a^* p^2 + c^* != 0 <=> p^2 != c^* / a^* = k^2 <=> p != k \
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
    $abs(X_"вын.") -> oo "при" t -> oo \
    abs(X_"ОН") -> oo "при" t -> oo$
  ],
  [
    #figure(
      image("source-figures/lect6-3.png"),
    )
  ],
)

$X_"ОО"$ - собственные колебания ($X_"собств."$), $X_"част."$ - вынужденные колебания ($X_"вын."$)

Явление, при котором совпадают частоты вынужденных и собственных колебаний, называют резонансом. При резонансе неограниченно возрастает амплитуда колебаний. Биение - случай, когда p лишь приблизительно равен k.

== Геометрия масс

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

=== Тензор инерции

#v(1em)

$
  I = mat(
    delim: "|",
    J_x, -J_(x y), -J_(x z);
    -J_(y x), J_y, -J_(y z);
    -J_(z x), -J_(z y), J_z;
  ) - "тензор инерции"
$

=== Углы Эйлера

#v(1em)

Берётся твёрдое тело с неподвижной точкой

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

==== Кинематические уравнения Эйлера

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

==== Кинетический момент твердого тела с неподвижной точкой

#v(1em)

$ov(K)_0 = display(sum_j [ov(r)_j, m_j ov(V)_j]), ov(r)_j = (x_j, y_j, z_j), ov(V)_j = [ov(omega), ov(r)_j], ov(omega) = (omega_x, omega_y, omega_z)$

#v(1em)

#grid(
  columns: (3.5cm, 1fr),
  align: horizon,
  [$display(ov(V)_j = mat(delim: "|", ov(i), ov(j), ov(k); omega_x, omega_y, omega_z; x_j, y_j, z_j;))$],
  [
    $V_(j x) = omega_y z_j - omega_z y_j \
    V_(j y) = omega_z x_j - omega_x z_j \
    V_(j z) = omega_x y_j - omega_y x_j$
  ],
)

#v(1em)

$display(
  [ov(r)_j, m_j ov(V)_j] = mat(
    delim: "|",
    ov(i), ov(j), ov(k);
    x_j, y_j, z_j;
    m_j (omega_y z_j - omega_z y_j), m_j (omega_z x_j - omega_x z_j), m_j (omega_x y_j - omega_y x_j);
  )
)$

#v(1em)

$[ov(r)_j, m_j ov(V)_j]_x &= y_j m_j (omega_x y_j - omega_y x_j) - z_j m_j (omega_z x_j - omega_x z_j) = \
&= omega_x m_j (y_j^2 + z_j^2) - omega_y m_j x_j y_j - omega_z m_j x_j z_j$

$ K_x = (omega_x sum_j m_j (y_j^2 + z_j^2) - omega_y sum_j m_j x_j y_j - omega_z sum_j m_j x_j z_j) $

#v(1em)

#grid(
  columns: (1.5fr, 1fr, 1fr, 1fr),
  align: horizon,
  [
    $K_x = J_x omega_x - J_(x y) omega_y - J_(x z) omega_z \
    K_y = J_y omega_y - J_(y z) omega_z - J_(y x) omega_y \
    K_z = J_z omega_z - J_(z x) omega_x - J_(z y) omega_x$
  ],
  [$
    ov(K)_0 = vec(K_x, K_y, K_z)
  $],
  [$
    ov(omega) = vec(omega_x, omega_y, omega_z)
  $],
  [$
    ov(K)_0 = I ov(omega)
  $],
)

=== Главные оси инерции

#v(1em)

Главными осями инерции называются оси, для которых смешанные моменты инерции в индексе которых присутствует название этой оси равны 0 ($J_(x y) = J_(x z) = 0 => O x - "главная ось инерции"$). Можно доказать, что в любой точке твердого тела любой формы можно построить по крайней мере 3 взаимноортоганальные главные оси инерции.

Если $O x$, $O y$, $O z$ - главные оси инерции, то $ov(K)_0 = (J_x omega_x, J_y omega_y, J_z omega_z)$.

==== Динамические уравнения Эйлера

#v(1em)

$display(
  dv(ov(K)_0, t) = ov(M)_0^((e))\; dv(ov(K)_0, t) = (tilde(dif) ov(K)_0)/(dif t) + [ov(omega), ov(K)_0] => (tilde(dif) ov(K)_0)/(dif t) + [ov(omega), ov(K)_0] = ov(M)_0^((e))
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

==== Векторные и скалярные уравнения движения точки

#v(1em)

Один из вопросов в билетах

$
  cases(
    reverse: #true,
    delim: "|",
    ov(omega) = ov(dot(psi)) + ov(dot(theta)) + ov(dot(phi)),
    (tilde(dif) ov(K)_0)/(dif t) + [ov(omega), ov(K)_0] = ov(M)_0^((e)),
  ) "векторные уравнения"
$

$
  cases(
    reverse: #true,
    delim: "|",
    omega_x = dot(psi)' cos(90 degree - phi) + dot(theta) cos(phi),
    omega_y = dot(psi)' cos(phi) + dot(theta) cos(90 degree + phi),
    omega_z = dot(psi)'' + dot(phi),
    J_x dot(omega)_x + (J_z - J_y) omega_y omega_z = M_x^((e)),
    J_y dot(omega)_y + (J_x - J_z) omega_x omega_z = M_y^((e)),
    J_z dot(omega)_z + (J_y - J_x) omega_x omega_y = M_z^((e)),
  ) "скалярные уравнения"
$

==== Векторные и скалярные уравнения свободного движения твердого тела

#v(1em)

#grid(
  columns: (1fr, 1fr),
  [
    $M ov(W)_c = ov(F)^((e)); ov(omega) = ov(dot(psi)) + ov(dot(theta)) + ov(dot(phi)) \
    (tilde(dif) ov(K)_c)/(dif t) + [ov(omega), ov(K)_c] = ov(M)_c^((e)) \
    M W_(c x) = F_x^((e)), M W_(c y) = F_y^((e)), M W_(c z) = F_z^((e)) \
    omega_x = dot(psi)' cos(90 degree - phi) + dot(theta) cos(phi), \
    omega_y = dot(psi)' cos(phi) + dot(theta) cos(90 degree + phi), \
    omega_z = dot(psi)'' + dot(phi) \
    J_x dot(omega)_x + (J_z - J_y) omega_y omega_z = \ = M_c^((e)), J_y dot(omega)_y + (J_x - J_z) omega_x omega_z = \ = M_c^((e)), J_z dot(omega)_z + (J_y - J_x) omega_x omega_y = M_c^((e))$
  ],
  [
    #figure(
      image("source-figures/lect7-1.png"),
    )
  ],
)

=== Поступательное движение тела переменной массы

#v(1em)

Масса меняется непрерывно. "Не будем рисовать ракету, чтобы никто ничего не заподозрил".

#grid(
  columns: (1.5fr, 1fr),
  [
    $dv(ov(Q), t) = ov(F)^((e)) \
    m(t + Delta t) = m(t) + Delta m_2 - Delta m_1 \
    Delta m = m(t + Delta t) - m(t) = -Delta m_1 + Delta m_2 \
    display(dv(m, t) = lim_(Delta t -> 0) dv(m, t, d: Delta) = -lim_(Delta t -> 0) dv(m_1, t, d: Delta) + lim_(Delta t -> 0) dv(m_2, t, d: Delta) = \ = -dv(m_1, t) + dv(m_2, t)) \
    Delta ov(Q) = ov(Q)(t + Delta t) - ov(Q)(t) = m(t + Delta t) ov(V)(t + Delta t) + \ + Delta m_1 ov(V)_1 - (m(t) ov(V)(t) + Delta m_2 ov(V)_2) = cancel(m(t) ov(V)(t)) - \ - Delta m_1 ov(V)(t) + Delta m_2 ov(V)(t) + m(t) Delta ov(V) - Delta m_1 Delta ov(V) + \ + Delta m_2 Delta ov(V) - cancel(m(t) ov(V)(t)) - Delta m_2 ov(V)_2 + Delta m_1 ov(V)_1 = \
    = m(t) Delta ov(V) - Delta m_1 (ov(V)_1 - ov(V)(t)) - Delta m_2 (ov(V)_2 - ov(V)(t)) - Delta m_1 Delta ov(V) + Delta m_2 Delta ov(V)$
  ],
  [
    #figure(
      image("source-figures/lect7-2.png"),
    )
  ],
)

$display(dv(ov(Q), t) = lim_(Delta t -> 0) dv(ov(Q), t, d: Delta) = lim_(Delta t -> 0) m(t) dv(ov(V), t, d: Delta) + lim_(Delta t -> 0) (dv(m_1, t, d: Delta) (ov(V)_1 - ov(V)(t))) - lim_(Delta t -> 0) (dv(m_2, t, d: Delta) (ov(V)_2 - ov(V)(t))) - \ - lim_(Delta t -> 0) (Delta m_1 Delta ov(V))/(Delta t) + lim_(Delta t -> 0) (Delta m_2 Delta ov(V))/(Delta t) = m(t) lim_(Delta t -> 0) dv(ov(V), t, d: Delta) + (ov(V)_1 - ov(V)(t)) lim_(Delta -> 0) dv(m_1, t, d: Delta) - (ov(V)_2 - ov(V)(t)) lim_(Delta -> 0) dv(m_2, t, d: Delta)) \
ov(V)_1 - ov(V)(t) = ov(V)_(1r); ov(V)_2 - ov(V)(t) = ov(V)_(2r) \
dv(ov(Q), t) = ov(F)^((e)) => m(t) dv(ov(V), t) + dv(m_1, t) ov(V)_(1r) - dv(m_2, t) ov(V)_(2r) = ov(F)^((e))$

Уравнение Мещерского#footnote[Да, того самого создателя легендарного задачника] в случае одновременного отсоединения и присоединения частиц $ m(t) dv(ov(V), t) = ov(F)^((e)) - dv(m_1, t) ov(V)_(1r) + dv(m_2, t) ov(V)_(2r) $

#pagebreak(weak: true)

Уравнение Мещерского в случае отсоединения частиц - уравнение реактивного движения $ Delta m_2 = 0 => dv(m_2, t) = 0; dv(m, t) = -dv(m_1, t) => m(t) dv(ov(V), t) = ov(F)^((e)) + dv(m, t) ov(V)_(1r) $

Уравнение Мещерского в случае присоединения частиц $ Delta m_1 = 0 => dv(m_1, t) = 0; dv(m, t) = dv(m_2, t) => m(t) dv(ov(V), t) = ov(F)^((e)) + dv(m, t) ov(V)_(2r) $

==== Задача Циолковского

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
      ) m(t) dv(ov(V), t) = dv(m, t) ov(V)_(1r)
    )$
  ],
  [
    #figure(
      image("source-figures/lect7-3.png", width: 80%),
    )
  ],
)

$(x): m(t) dv(V, t) = -dv(m, t) V_(1r) => integral dif V = -integral (dif m)/(m) V_(1r) => -V_(1r) ln m + C \
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

Масса топлива, необходимого для попадания на космическую орбиту, в 28 раз больше массы остальной ракеты. На практике используется многоступенчатая система.

===== Многоступенчатая ракета (@многоступ)

#v(1em)

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
