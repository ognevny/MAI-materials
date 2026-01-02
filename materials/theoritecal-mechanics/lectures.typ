#import "meta.typ": conf

#show: conf.with(
  titl: "Лекции по Теоретической механике",
  desc: "Конспект лекций Зародова В.К. по Теоретической механике",
  datet: datetime(year: 2026, month: 1, day: 2),
  head: [_Лекции по Теоретической механике_],
)

#outline()
#pagebreak(weak: true)

= Динамика

== Аксиомы динамики

1. I закон Ньютона: существуют системы отсчёта, по отношению к которым материальная точка без действия сил либо покоится, либо движется равномерно и прямолинейно. Такая система отсчёта называется инерциальной (ИСО).

2. II закон Ньютона: в ИСО при действии на материальную точку силы она получает ускорение, направленное по линии действия силы и по величине ей пропорциональная
#figure(
  image("source-figures/lect0-1-1.png", width: 15%),
)
$ W ~ F, overline(W) = 1/m overline(F) $

3. III закон Ньютона: 2 объекта взаимодействуют силами, имеющими общую линию действия, равные модули и противоположные направления.

4. Аксиома независимости действия сил: если в ИСО на материальную точку действуют несколько сил, то она получает ускорение, равное векторной сумме ускорений, получаемых при действии каждой силы по отдельности.

$ overline(W) = overline(W)_1 + overline(W)_2 + ... + overline(W)_N = 1/m overline(F)_1 + 1/m overline(F)_2 + ... + 1/m overline(F)_N = 1/m (overline(F)_1 + overline(F)_2 + ... + overline(F)_N) $ $ m overline(W) = sum_(i=1)^N overline(F) $

5. Принцип освобождаемости: несвободный объект можно считать свободным, заменив действие связей силами, называемыми реакциями связи.

$overline(W)_a = overline(W)_r + overline(W)_e + overline(W)_c$\
$m overline(W)_a = display(sum_(j=1)^N overline(F)_j + sum_(k=1)^p overline(R)_k)$\
$m (overline(W)_r + overline(W)_e + overline(W)_c) = display(sum_(j=1)^N overline(F)_j + sum_(k=1)^p overline(R)_k)$\
$m overline(W)_r = display(sum_(j=1)^N overline(F)_j + sum_(k=1)^p overline(R)_k - overline(W)_e - overline(W)_c)$

Силы инерции: $ overline(Phi)_e = -m overline(W)_e, overline(Phi)_c = -m overline(W)_c $

$m overline(W)_r = display(sum_(j=1)^N overline(F)_j + sum_(k=1)^N overline(R)_k + overline(Phi)_e + overline(Phi)_c)$

$overline(W)_c = overline(W)_0 + [overline(epsilon); overline(rho)] + [overline(omega); [overline(omega); overline(rho)]]$\
$overline(W)_c = -2m [overline(omega)_e; overline(V)_r]$

$overline(omega) = 0, overline(epsilon) = 0 => overline(Phi)_e = -m overline(W)_0, overline(Phi)_c = 0$

$overline(V)_r = 0, overline(W)_r = 0 => display(sum_(j=1)^N overline(F)_j + sum_(k=1)^p overline(R)_k + overline(Phi)_e = 0)$

#figure(
  image("source-figures/lect0-1-2.png", width: 18%),
)

$omega_e = "const"$\
$"OM" = l$\
$T, alpha - ?$

$m overline(g) + overline(T) + overline(Phi)_e = 0$\
$overline(Phi)_e = -m overline(W)_e$\
$Phi_e = m W_e = m omega^2 R = m omega^2 l sin(alpha)$

$display(cases(
  x\: 0 - T sin(alpha) + Phi_e = 0,
  y\: -m g + T cos(alpha) + 0 = 0,
))$

$-T sin(alpha) + m omega^2 l sin(alpha) = 0$

При $sin(alpha_1) = 0$: $T_1 = (m g)/cos(alpha_1) = m g$;

при $sin(alpha_2) != 0$: $-T_2 cancel(sin(alpha_2)) + m omega^2 l cancel(sin(alpha_2)) = 0 => T_2 = m omega^2 l$

$-m g + T_2 cos(alpha_2) = 0 => cos(alpha_2) = (m g)/T_2 = (m g)/(m omega^2 l) = g/(omega^2 l)$

#figure(
  image("source-figures/lect0-1-3.png", width: 40%),
  caption: [Динамика вращения Земли],
)

== Динамика механической системы (МС)

МС называется совокупность материальных точек и твердых тел в рамках данной задачи. Центром масс МС называется точка (C) такая, что её радиус-вектор определяется по формулам: $ overline(r)_C = (display(sum_j) m_j overline(r)_j)/(display(sum_j) m_j), overline(r)_C = (display(sum_j) overline(P)_j overline(r)_j)/(display(sum_j) overline(P)_j), $ где $overline(P)_j = m_j overline(g)$.

$display(M = sum_j m_j)$

$ overline(V)_C = (dif overline(r)_C)/(dif t) = (dif/(dif t) (display(sum_j) m_j overline(r)_j)) / (dif/(dif t) (display(sum_j) m_j)) = (display(sum_j) m_j (dif overline(r)_j)/(dif t))/(sum_j m_j) = (display(sum_j) m_j overline(V)_j)/M $ $ overline(W)_C = (dif overline(V)_C) / (dif t) = (display(sum_j) m_j overline(W)_j)/M $

Внутренними силами называются силы взаимодействия между объектами данной МС, обозначается как $overline(F)^((i))$.

Внешними силами называются силы действия на объекты МС со стороны объектов, не включенных в данную МС, обозначаются как $overline(F)^((e))$.

=== Свойства внутренних сил

$display(sum_j overline(F)_j^((i)) = 0)$
#figure(
  image("source-figures/lect0-1-4.png", width: 22%)
)
$overline(r)_B = overline(r)_A + overline("AB")$

$overline(M)_B (overline(F)_A^((i))) + overline(M)_0 (overline(F)_B^((i))) = [overline(r)_A, overline(F)_A^((i))] + [overline(r)_B, overline(F)_B^((i))] = [overline(r)_A, overline(F)_A^((i))] + [overline(r)_A, overline(F)_B^((i))] + [overline(r)_A, overline(F)_A^((i)) + overline(F)_B^((i))] + \
  + [overline("AB"), overline(F)_B^((i))]$

$abs([overline("AB"), overline(F)_B^((i))]) = "AB" dot F_B^((i)) sin(angle(overline("AB"), overline(F)_B^((i)))) = "AB" dot F_B^((i)) sin(180 degree) = 0$

$forall "т.O "display(sum_j overline(M)_0 (overline(F)_j^((i))) = 0)$

=== Количество движения МС

Количеством движения точки называется вектор, равный произведению массы точки на её скорость $ overline(q)_j = m_j overline(V)_j $
Количеством движения МС называется векторная сумма количеств движений точек этой МС $ overline(Q) = display(sum_j) overline(q)_j = display(sum_j) m_j overline(V)_j $ $ overline(V)_C = (display(sum_j) m_j overline(V)_j)/M => overline(Q) = display(sum_j) m_j overline(V)_j $

==== Теорема об изменении вектора количества движения МС в дифференциальной форме

$ dif/(dif t) overline(Q) = display(sum_j) overline(F)_j^((e)) $

$display((dif overline(Q))/(dif t) = dif/(dif t) (sum_j m_j overline(V)_j) = sum_j dif/(dif t) (m_j overline(V)_j) = sum_j m_j (dif overline(V)_j)/(dif t) = sum_j m_j overline(W)_j = sum_j overline(F)_j^((e)) + sum_j overline(F)_j^((i)) = \ = sum_j overline(F)_j^((e)))$

==== Теорема об изменении вектора количества движения МС в интегральной форме

Изменение вектора количества движения МС за время $tau$ равно векторной сумме импульсов внешних сил за это время

$ Delta overline(Q) = overline(Q) (tau) - overline(Q) (0) = sum_j overline(S)_(tau) (overline(F)_j^((e))) $

$(dif overline(Q))/(dif t) = display(sum_j overline(F)_j^((e)))$

$dif overline(Q) = display((sum_j overline(F)_j^((e))) dif t)$

$dif overline(Q) = display(sum_j (overline(F)_j^((e)) dif t) => integral_0^(tau) dif overline(Q) = integral_0^(tau) sum_j (F_j^((e)) dif t))$

$display(overline(Q) (tau) - overline(Q) (0) = sum_j overline(S)_(tau) (overline(F)_j^((e))))$

=== Движение центра масс

$overline(Q) = M overline(V)_C; (dif overline(Q))/(dif t) = display(sum_j overline(F)_j^((e))\; M (dif overline(V)_C)/(dif t) = sum_j overline(F)_j^((e)))$

Теорема о движении центра масс: $ M overline(W)_C = sum_j overline(F)_j^((e)) $ Центр масс движется как материальная точка в предположении, что в нём сосредоточена масса МС, и к ней приложены все внешние силы. Если $display(sum_j overline(F)_j^((e)) = 0)$, то центр масс покоится, либо движется равномерно и прямолинейно.

Если $display(F_(j x)^((e)) = 0)$, то $W_(c x) = 0 => V_C = "const"$, при этом при $t_0 = 0$ $V_(C_0) = 0$.

Внутренние силы не влияют непосредственно на движение центра масс

=== Кинетический момент МС

Моментом количества движения точки относительно центра O называется векторное произведение радиус-вектора на её вектор количества движения.
#figure(
  image("source-figures/lect0-1-5.png", width: 15%),
)
$ overline(K)_(j O) = [overline(r)_j, overline(q)_j] = [overline(r)_j, m_j overline(V)_j] $
Кинетическим моментом МС относительно центра называется векторная сумма $overline(K)_(j O)$.

==== Теорема об изменении кинетического момента МС относительно неподвижного центра

$ dif/(dif t) overline(K)_(j O) = sum_j M_0 (overline(F)_j^((e))) $

$display((dif overline(K)_(j O))/(dif t) = dif/(dif t) sum_j [overline(r)_j, m_j overline(V)_j] = sum_j dif/(dif t) [overline(r)_j, m_j overline(V)_j] = sum_j ([(dif overline(r)_j)/(dif t), m_j overline(V)_j] + [overline(r)_j, (dif (m_j overline(V)_j))/(dif t)]) = \
  = sum_j (0 + overline(M)_0 (overline(F)_j^((e)))))$
$display(sum_j [overline(r)_j, (dif (m_j overline(V)_j))/(dif t)] = sum_j [overline(r)_j, overline(F)_j^((e))] + sum_j [overline(r)_j, overline(F)_j^((i))] = sum_j overline(M)_0 (overline(F)_j^((e))) + cancel(sum_j overline(M)_0 (overline(F)_j^((i)))))$

$overline(K)_0 = display(sum_j [overline(r)_j, m_j overline(V)_j] => (dif overline(K)_0)/(dif t) = sum_j overline(M)_0 (overline(F)_j^((e))))$

#figure(
  image("source-figures/lect0-1-6.png", width: 25%),
)

$ [overline(r)_j, m_j overline(V)_j] = mat(
  delim: "|",
  overline(i), overline(j), overline(k);
  x_j, y_j, z_j;
  m_j V_(j x), m_j V_(j y), m_j V_(j z);
) $

$[overline(r)_j, m_j overline(V)_j]_x = y_j m_j V_(j z) - z_j m_j V_(j y)$\
$[overline(r)_j, m_j overline(V)_j]_y = z_j m_j V_(j x) - x_j m_j V_(j z)$\
$[overline(r)_j, m_j overline(V)_j]_z = x_j m_j V_(j y) - y_j m_j V_(j x)$

$x'_j = x_j, y'_j = y_j, z'_j != z_j => K_"O'Z'" = display(sum_j (x'_j m_j V_(j y) - y'_j m_j V_(j x)) = sum_j (x_j m_j V_(j y) - y_j m_j V_(j x)) = K_"OZ")$

Кинетическим моментом МС относительно оси называется проекция на эту ось вектора кинетического момента МС, вычисленного относительно любого центра, лежащего на этой оси $ K_"OX" = "Пр"_"OX" dot overline(K)_O $
