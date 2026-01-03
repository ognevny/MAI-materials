#import "meta.typ": conf

#show: conf.with(
  titl: "Лекции по Теоретической механике",
  desc: "Конспект лекций Зародова В.К. по Теоретической механике",
  datet: datetime(year: 2026, month: 1, day: 2),
  head: [_Лекции по Теоретической механике_],
)

#let ov(var) = $overline(#var)$

#outline()
#pagebreak(weak: true)

= Динамика

== Аксиомы динамики

1. I закон Ньютона: существуют системы отсчёта, по отношению к которым материальная точка без действия сил либо покоится, либо движется равномерно и прямолинейно. Такая система отсчёта называется инерциальной (ИСО).

2. II закон Ньютона: в ИСО при действии на материальную точку силы она получает ускорение, направленное по линии действия силы и по величине ей пропорциональная
#figure(
  image("source-figures/lect0-1-1.png", width: 15%),
)
$ W ~ F, ov(W) = 1/m ov(F) $

3. III закон Ньютона: 2 объекта взаимодействуют силами, имеющими общую линию действия, равные модули и противоположные направления.

4. Аксиома независимости действия сил: если в ИСО на материальную точку действуют несколько сил, то она получает ускорение, равное векторной сумме ускорений, получаемых при действии каждой силы по отдельности.

$ ov(W) = ov(W)_1 + ov(W)_2 + ... + ov(W)_N = 1/m ov(F)_1 + 1/m ov(F)_2 + ... + 1/m ov(F)_N = 1/m (ov(F)_1 + ov(F)_2 + ... + ov(F)_N) $ $ m ov(W) = sum_(i=1)^N ov(F) $

5. Принцип освобождаемости: несвободный объект можно считать свободным, заменив действие связей силами, называемыми реакциями связи.

$ov(W)_a = ov(W)_r + ov(W)_e + ov(W)_c$\
$m ov(W)_a = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k)$\
$m (ov(W)_r + ov(W)_e + ov(W)_c) = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k)$\
$m ov(W)_r = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k - ov(W)_e - ov(W)_c)$

Силы инерции: $ ov(Phi)_e = -m ov(W)_e, ov(Phi)_c = -m ov(W)_c $

$m ov(W)_r = display(sum_(j=1)^N ov(F)_j + sum_(k=1)^N ov(R)_k + ov(Phi)_e + ov(Phi)_c)$

$ov(W)_c = ov(W)_0 + [ov(epsilon); ov(rho)] + [ov(omega); [ov(omega); ov(rho)]]$\
$ov(W)_c = -2m [ov(omega)_e; ov(V)_r]$

$ov(omega) = 0, ov(epsilon) = 0 => ov(Phi)_e = -m ov(W)_0, ov(Phi)_c = 0$

$ov(V)_r = 0, ov(W)_r = 0 => display(sum_(j=1)^N ov(F)_j + sum_(k=1)^p ov(R)_k + ov(Phi)_e = 0)$

#figure(
  image("source-figures/lect0-1-2.png", width: 18%),
)

$omega_e = "const"$\
$"OM" = l$\
$T, alpha - ?$

$m ov(g) + ov(T) + ov(Phi)_e = 0$\
$ov(Phi)_e = -m ov(W)_e$\
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

МС называется совокупность материальных точек и твердых тел в рамках данной задачи. Центром масс МС называется точка (C) такая, что её радиус-вектор определяется по формулам: $ ov(r)_C = (display(sum_j) m_j ov(r)_j)/(display(sum_j) m_j), ov(r)_C = (display(sum_j) ov(P)_j ov(r)_j)/(display(sum_j) ov(P)_j), $ где $ov(P)_j = m_j ov(g)$.

$display(M = sum_j m_j)$

$ ov(V)_C = (dif ov(r)_C)/(dif t) = (dif/(dif t) (display(sum_j) m_j ov(r)_j)) / (dif/(dif t) (display(sum_j) m_j)) = (display(sum_j) m_j (dif ov(r)_j)/(dif t))/(sum_j m_j) = (display(sum_j) m_j ov(V)_j)/M $ $ ov(W)_C = (dif ov(V)_C) / (dif t) = (display(sum_j) m_j ov(W)_j)/M $

Внутренними силами называются силы взаимодействия между объектами данной МС, обозначается как $ov(F)^((i))$.

Внешними силами называются силы действия на объекты МС со стороны объектов, не включенных в данную МС, обозначаются как $ov(F)^((e))$.

=== Свойства внутренних сил

$display(sum_j ov(F)_j^((i)) = 0)$
#figure(
  image("source-figures/lect0-1-4.png", width: 22%)
)
$ov(r)_B = ov(r)_A + ov("AB")$

$ov(M)_B (ov(F)_A^((i))) + ov(M)_0 (ov(F)_B^((i))) = [ov(r)_A, ov(F)_A^((i))] + [ov(r)_B, ov(F)_B^((i))] = [ov(r)_A, ov(F)_A^((i))] + [ov(r)_A, ov(F)_B^((i))] + [ov(r)_A, ov(F)_A^((i)) + ov(F)_B^((i))] + \
  + [ov("AB"), ov(F)_B^((i))]$

$abs([ov("AB"), ov(F)_B^((i))]) = "AB" dot F_B^((i)) sin(angle(ov("AB"), ov(F)_B^((i)))) = "AB" dot F_B^((i)) sin(180 degree) = 0$

$forall "т.O "display(sum_j ov(M)_0 (ov(F)_j^((i))) = 0)$

=== Количество движения МС

Количеством движения точки называется вектор, равный произведению массы точки на её скорость $ ov(q)_j = m_j ov(V)_j $
Количеством движения МС называется векторная сумма количеств движений точек этой МС $ ov(Q) = display(sum_j) ov(q)_j = display(sum_j) m_j ov(V)_j $ $ ov(V)_C = (display(sum_j) m_j ov(V)_j)/M => ov(Q) = display(sum_j) m_j ov(V)_j $

==== Теорема об изменении вектора количества движения МС в дифференциальной форме

$ dif/(dif t) ov(Q) = display(sum_j) ov(F)_j^((e)) $

$display((dif ov(Q))/(dif t) = dif/(dif t) (sum_j m_j ov(V)_j) = sum_j dif/(dif t) (m_j ov(V)_j) = sum_j m_j (dif ov(V)_j)/(dif t) = sum_j m_j ov(W)_j = sum_j ov(F)_j^((e)) + sum_j ov(F)_j^((i)) = \ = sum_j ov(F)_j^((e)))$

==== Теорема об изменении вектора количества движения МС в интегральной форме

Изменение вектора количества движения МС за время $tau$ равно векторной сумме импульсов внешних сил за это время

$ Delta ov(Q) = ov(Q) (tau) - ov(Q) (0) = sum_j ov(S)_(tau) (ov(F)_j^((e))) $

$(dif ov(Q))/(dif t) = display(sum_j ov(F)_j^((e)))$

$dif ov(Q) = display((sum_j ov(F)_j^((e))) dif t)$

$dif ov(Q) = display(sum_j (ov(F)_j^((e)) dif t) => integral_0^(tau) dif ov(Q) = integral_0^(tau) sum_j (F_j^((e)) dif t))$

$display(ov(Q) (tau) - ov(Q) (0) = sum_j ov(S)_(tau) (ov(F)_j^((e))))$

=== Движение центра масс

$ov(Q) = M ov(V)_C; (dif ov(Q))/(dif t) = display(sum_j ov(F)_j^((e))\; M (dif ov(V)_C)/(dif t) = sum_j ov(F)_j^((e)))$

Теорема о движении центра масс: $ M ov(W)_C = sum_j ov(F)_j^((e)) $ Центр масс движется как материальная точка в предположении, что в нём сосредоточена масса МС, и к ней приложены все внешние силы. Если $display(sum_j ov(F)_j^((e)) = 0)$, то центр масс покоится, либо движется равномерно и прямолинейно.

Если $display(F_(j x)^((e)) = 0)$, то $W_(c x) = 0 => V_C = "const"$, при этом при $t_0 = 0$ $V_(C_0) = 0$.

Внутренние силы не влияют непосредственно на движение центра масс

=== Кинетический момент МС

Моментом количества движения точки относительно центра O называется векторное произведение радиус-вектора на её вектор количества движения.
#figure(
  image("source-figures/lect0-1-5.png", width: 15%),
)
$ ov(K)_(j O) = [ov(r)_j, ov(q)_j] = [ov(r)_j, m_j ov(V)_j] $
Кинетическим моментом МС относительно центра называется векторная сумма $ov(K)_(j O)$.

==== Теорема об изменении кинетического момента МС относительно неподвижного центра

$ dif/(dif t) ov(K)_(j O) = sum_j M_0 (ov(F)_j^((e))) $

$display((dif ov(K)_(j O))/(dif t) = dif/(dif t) sum_j [ov(r)_j, m_j ov(V)_j] = sum_j dif/(dif t) [ov(r)_j, m_j ov(V)_j] = sum_j ([(dif ov(r)_j)/(dif t), m_j ov(V)_j] + [ov(r)_j, (dif (m_j ov(V)_j))/(dif t)]) = \
  = sum_j (0 + ov(M)_0 (ov(F)_j^((e)))))$
$display(sum_j [ov(r)_j, (dif (m_j ov(V)_j))/(dif t)] = sum_j [ov(r)_j, ov(F)_j^((e))] + sum_j [ov(r)_j, ov(F)_j^((i))] = sum_j ov(M)_0 (ov(F)_j^((e))) + cancel(sum_j ov(M)_0 (ov(F)_j^((i)))))$

$ov(K)_0 = display(sum_j [ov(r)_j, m_j ov(V)_j] => (dif ov(K)_0)/(dif t) = sum_j ov(M)_0 (ov(F)_j^((e))))$

#figure(
  image("source-figures/lect0-1-6.png", width: 25%),
)

$ [ov(r)_j, m_j ov(V)_j] = mat(
  delim: "|",
  ov(i), ov(j), ov(k);
  x_j, y_j, z_j;
  m_j V_(j x), m_j V_(j y), m_j V_(j z);
) $

$[ov(r)_j, m_j ov(V)_j]_x = y_j m_j V_(j z) - z_j m_j V_(j y)$\
$[ov(r)_j, m_j ov(V)_j]_y = z_j m_j V_(j x) - x_j m_j V_(j z)$\
$[ov(r)_j, m_j ov(V)_j]_z = x_j m_j V_(j y) - y_j m_j V_(j x)$

$x'_j = x_j, y'_j = y_j, z'_j != z_j => K_"O'Z'" = display(sum_j (x'_j m_j V_(j y) - y'_j m_j V_(j x)) = sum_j (x_j m_j V_(j y) - y_j m_j V_(j x)) = K_"OZ")$

Кинетическим моментом МС относительно оси называется проекция на эту ось вектора кинетического момента МС, вычисленного относительно любого центра, лежащего на этой оси $ K_"Ox" = "Пр"_"Ox" ov(K)_O $ Производная по времени от кинетического момента МС относительно неподвижной оси равна алгебраической сумме моментов внешних сил относительно этой оси $ (dif K_(O x))/(dif t) = sum_j M_(O x) (ov(F)_j^((e))) $

$display("Пр"_"Ox" (dif ov(K)_O)/(dif t) = "Пр"_"Ox" sum_j ov(M)_O (ov(F)_j^((e)))\; dif/(dif t) "Пр"_"Ox" ov(K)_O = sum_j "Пр"_"Ox" ov(M)_O (ov(F)_j^((e))))$

$"Пр"_"Ox" ov(K)_O = K_(O x); "Пр"_"Ox" ov(M)_O (ov(F)_j^((e))) = M_(O x) (ov(F)_j^((e)))$

#figure(
  image("source-figures/lect0-1-7.png", width: 25%)
)
$[ov(r)_j, m_j ov(V)_j]_z = x_j m_j V_(j y) - y_j m_j V_(j x)$

$ov(V)_j = [ov(omega), ov(r)_j] = mat(delim: "|", ov(i), ov(j), ov(k); 0, 0, dot(phi); x_j, y_j, z_j)$

$V_(j x) = -dot(phi) y_j; V_(j y) = dot(phi) x_j; V_(j z) = 0$

$K_(O z) = display(sum_j [ov(r)_j; m_j ov(V)_j] = sum_j (x_j m_j dot(phi) x_j - y_j m_j (-dot(phi) y_j)) = sum_j dot(phi) m_j (x_j^2 + y_j^2) = dot(phi) sum_j m_j (x_j^2 + + y_j^2)); x_j^2 + y_j^2 = d_(j z)^2$

Момент инерции: $ J_z = sum_j m_j d_(j z)^2 $

$K_(O z) = J_z dot(phi); display((dif K(O z))/(dif t) = sum_j M_(O z) (ov(F)_j^((e)))\; J_z dot.double(phi) = sum_j M_(O z) (ov(F)_j^((e))))$

===== Осевые моменты инерции некоторых тел

1. Тонкостенный цилиндр радиуса $R$
#figure(
  image("source-figures/lect0-1-8.png", width: 12%),
)
$J_z = display(sum_j m_j d_j^2 = (sum_j m_j) R^2 = M R^2)$
$ J_z = M R^2 $
2. Цилиндр радиуса $R$ и с толщиной стенок $H$
#figure(
  image("source-figures/lect0-1-9.png", width: 15%),
)
$J_(d r) = m_(d r) r^2$\
$m_(d r) = M/(pi R^2 H) dot 2pi r^2 dif r dot H$

$J_z = integral_0^R J_(d r) = integral_0^R M/R^2 2 dif r dot r^3 = 2 M/R^2 integral_0^R r^3 dif r = 2 M/R^2 r^4/4 bar.v_0^R = 1/2 M R^2$

3. Диск с осью вращения, проходящим через центр поперёк диска
#figure(
  image("source-figures/lect0-1-10.png", width: 25%),
)
$J_(d x) = m_(d x) x^2; m_(d x) = M/L dif x$

$display(J_(c z) = integral J_(d x) = integral M/L dif x dot x^2 = M/L integral_(-L/2)^(L/2) x^2 dif x = M/L x^3/3 bar.v_(-L/2)^(L/2) = M/L (L^3/24 - (-L^3/24)) = (M L^2)/12)$

3.1. Тот же диск, но ось вращения находится на расстоянии $n$ от центральной
#figure(
  image("source-figures/lect0-1-11.png", width: 19%),
)
$J_"AZ'" = J_"CZ" + M h^2$ $ J_"AZ'" = 1/12 M L^2 + M (L/2)^2 = (M L^2)/3 $

Радиус инерции: $ J_z = M rho^2, [rho] = м $

==== Кинетическая энергия МС

Кинетической энергией МС называется сумма полупроизведений масс точек на квадраты их скоростей $ T = sum_j (m_j V_j^2)/2 $

===== Кинетическая энергия поступательного движения

$display(forall j: ov(V)_j = ov(V)\, T = sum_j (m_j V_j^2)/2\, sum_j m_j = M)$ $ T = (M V^2)/2 $

===== Кинетическая энергия вращательного движения

$display(V_j = omega d_j\, T = sum_j (m_j V_j^2)/2 = sum_j (m_j (omega d_j)^2)/2 = omega^2/2 sum_j m_j d_j^2)$ $ T = (J omega^2)/2 $

===== Кинетическая энергия плоскопараллельного движения

#figure(
  image("source-figures/lect0-1-12.png", width: 25%),
)

$ov(V)_j = ov(V)_A + [ov(omega), ov(rho)_j]$

$display(T = 1/2 sum_j m_j (ov(V)_A + [ov(omega), ov(rho)_j])^2)$

$display(T = 1/2 sum_j m_j (ov(V)_C + [ov(omega), ov(rho)_j])^2 = 1/2 sum_j m_j V_C^2 + 1/2 sum_j m_j [ov(omega), ov(rho)_j])$

$display(1/2 sum_j m_j V_C^2 = 1/2 V_C^2 sum_j m_j = 1/2 M V_C^2\; 1/2 sum_j m_j [ov(omega), ov(rho)_j]^2 = 1/2 sum_j m_j omega^2 rho_j^2 = 1/2 omega^2 sum_j m_j rho_j^2 = \ = 1/2 J_(C z) omega^2\; 1/2 sum_j m_j dot 2(ov(V)_C, [ov(omega), ov(rho)_j]) = (sum_j m_j ov(rho)_j; [ov(V)_C, ov(omega)]) = 0)$

$ ov(r)_C = display(sum_j m_j ov(r)_j)/display(sum_j m_j); ov(rho)_C = display(sum_j m_j ov(rho)_j)/M => display(sum_j m_j ov(rho)_j = 0), $ поскольку $ov(rho)_C = 0$

Формула Кёнига $ T = (m V_C^2)/2 + (J_(O z) omega^2)/2 $

=== Работа силы

Элементарная работа силы - скалярное произведение вектора силы на вектор элементарного перемещения точки её приложения. $ov(V) = (dif ov(r))/(dif t), dif ov(r) = ov(V) dif t$
#figure(
  image("source-figures/lect0-1-13.png", width: 18%),
)
$ dif' A = (ov(F), dif ov(r)) $ $dif' A = F dif r cos(angle(ov(F), ov(V))) = F_x dif x + F_y dif y + F_z dif z = (ov(F), ov(V)) dif t = F V cos(ov(F), ov(V)) dif t = (F_x V_x + F_y V_y + F_z V_z) dif t$

==== Мощность силы в данный момент времени

$ N = (ov(F), ov(V)), dif' A = N dif t $

==== Полная работа силы

#figure(
  image("source-figures/lect0-1-14.png", width: 20%)
)
Полная работа силы при перемещении материальной точки из точки (1) в точку (2) - интеграл вдоль траектории перемещения от элементарных работы $ A_((1))^((2)) = integral_((1))^((2)) dif' A $
#figure(
  image("source-figures/lect0-1-15.png", width: 20%)
) <постсила>
Для $(ov(F)) = "const"$ (@постсила) имеем $A_((1))^((2)) = F S$

==== Теорема об изменении кинетической энергии МС в дифференциальной форме

Дифференциал кинетической энергии МС равен сумме элементарных работ сил, приоженных к точкам этой системы $ dif T = sum_j dif' A (ov(F)_j) $

Доказательство:

$display(T = sum_j (m_j V_j^2) = sum_j m_j/2 (ov(V)_j, ov(V)_j))$

$display(dif T = sum_j m_j/2 dif(ov(V)_j, ov(V)_j) = sum_j m_j/2 ((dif ov(V)_j, ov(V)_j) + (ov(V)_j, dif ov(V)_j)) = sum_j m_j (d ov(V)_j, (dif ov(r))/(dif t)) = \ = sum_j (m_j ov(W)_j, dif ov(r)_j) = sum_j (ov(F)_j, dif ov(r)_j) = sum_j dif' A (ov(F)_j))$

В этой теореме в общем случае учитываются элементарные работы как внешних, так и внутренних сил.

==== Теорема об изменении кинетической энергии МС в интегральной форме

Изменение кинетической энергии МС, прошедшим перемещение точек из положения (1) в положение (2) равно сумме полных работ сил при перемещении $ Delta T = T_((2)) - T_((1)) = sum_j A_((1))^((2)) (ov(F)_j) $

Доказательство

$display(integral_((1))^((2)) dif T = integral_((1))^((2)) sum_j dif' A (ov(F)_j)\; T bar.v_((1))^((2)) = sum_j integral_((1))^((2)) dif' A (ov(F)_j) => T_((2)) - T_((1)) = sum_j A_((1))^((2)) (ov(F)_j))$

$dif' A$ - величина порядка дифференциала.

=== Потенциальное поле сил (ППС) <ППС>

Поле сил называется потенциальным, если существует некая функция $U$, зависящая от координат ($exists U(x, y, z, ..., x_n, y_n, z_n)$), такая что выполняется уравнение $ F_(j x) = (partial U)/(partial x_j), F_(j y) = (partial U)/(partial y_j), F_(j z) = (partial U)/(partial z_j) $ для $j = 1...n$. Соответственно $U$ - силовая функция.

$display(sum_j dif' A (ov(F)_j) = sum_j (F_(j x) dif x_j + F_(j y) dif y_j + F_(j z) dif z_j) = sum_j ((partial U)/(partial x_j) dif x_j + (partial U)/(partial y_j) dif y_j + (partial U)/(partial z_j) dif z_j) = dif U)$

$display(dif T = sum_j dif' A (ov(F)_j) = dif U)$

$display(Delta T = integral_((1))^((2)) dif U = U_((2)) - U_((1)) = Delta U)$

В ППС полная работа не зависит от траектории перемещения точек

==== Потенциальная энергия

Обозначается как $Pi$

$dif Pi = -dif U$\
$dif T = -dif Pi$\
$Delta T = -Delta Pi = Pi_((1)) - Pi_((2))$\
$T_((2)) - T_((1)) = Pi_((1)) - Pi_((2))$\
$T_((2)) + Pi_((2)) = T_((1)) + Pi_((1))$

==== Интеграл энергии

$ E = T + Pi = h = "const", $ соответственно полная энергия $E = T + Pi$.

==== Сумма работ элементарных работ сил, приложенных к твердому телу

1. Поступательное движение ($forall j: ov(V)_j = ov(V)$)

$display(dif' A = sum_j (ov(F)_j, ov(V)) dif t = (sum_j ov(F)_j^((e)) + cancel(sum_j ov(F)_j^((i))), ov(V)) dif t = (sum_j ov(F)_j^((e)), ov(V)) dif t)$

$ dif ov(r) = ov(V) dif t => sum_j dif' A = (ov(F)_j^((e)), dif ov(r)) $

2. Вращательное движение ($ov(V)_j = [ov(omega), ov(r)_j]$)

$display(sum_j dif' A = sum_j (ov(F)_j, ov(V)_j) dif t = sum_j (ov(F)_j, [ov(omega), ov(r)_j]) dif t = (ov(omega), sum_j ov(M)_O (ov(F)_j^((e)))) dif t)$

$display(sum_j dif' A = sum_j M_z (ov(F)_j^((e))) omega dif t); omega = (dif phi)/(dif t) => dif phi = omega dif t$

$ sum_j dif' A = sum_j M_z (ov(F)_j^((e))) dif phi $

3. Плоскопараллельное движение
#figure(
  image("source-figures/lect0-1-16.png", width: 30%),
)
$display(sum_j dif' A = sum_j (ov(F)_j, ov(V)_j) dif t = sum_j (ov(F)_j, ov(V)_A) dif t + sum_j (ov(F)_j, [ov(omega), ov(rho)]) dif t = (sum_j ov(F)_j^((e)) + \ + cancel(sum_j ov(F)_j^((i))); ov(V)_A) dif t + sum_j (ov(omega), [ov(rho)_j, ov(F)_j^((e)) + ov(F)_j^((i))]) dif t = (ov(omega), sum_j [ov(rho)_j, ov(F)_j^((e))]) dif t + (ov(omega), sum_j [ov(rho)_j, ov(F)_j^((i))]) dif t)$

$[ov(rho)_j, ov(F)_j^((e))] = ov(M)_A (ov(F)_j^((e)))$

$[ov(rho)_j, ov(F)_j^((i))] = ov(M)_A (ov(F)_j^((i)))$

$display(sum_j dif' A (ov(F)_j) = (ov(omega), ov(r)_j ov(M)_A (ov(F)_j^((e)))) dif t = M_(A ov(omega)) (ov(F)_j^((e))) omega dif t)$

$ sum_j dif' A (ov(F)_j) = ov(F)_j^((e)) V_A dif t + sum_j M_(A ov(omega)) (ov(F)_j^((e))) dif phi $

== Идеальные связи

Идеальными связями называются связи, для которых сумма элементарных работ их реакций равна 0 на любых элементарных перемещениях, допускаемых связями $ forall dif ov(r)_j: sum_j (ov(R)_j, dif ov(R)_j) = 0 $

$dif' A_j = (ov(F)_j, ov(N)_j) dif t$

=== Гладкая поверхность

#figure(
  image("source-figures/lect0-1-17.png", width: 20%),
)
$ dif' A (ov(N), ov(V)_A) dif t = 0 $

=== Неподвижный шарнир

#figure(
  image("source-figures/lect0-1-18.png", width: 15%),
)
$ ov(V)_O = 0; dif' A = (ov(R), ov(V)_O) dif t = 0 $

=== Нерастяжимая невесомая нить

#figure(
  image("source-figures/lect0-1-19.png", width: 50%),
)
$ov(T)_B = -ov(T)_A, "Пр"_ov("AB") ov(V)_A = "Пр"_ov("AB") ov(V)_B$

$dif' A = (ov(T)_A, ov(V)_A) dif t + (ov(T)_B, ov(V)_B) dif t = (ov(T)_A, ov(V)_A) dif t + (-ov(T)_A, ov(V)_B) dif t = (ov(T)_A, ov(V)_A - ov(V)_B) dif t = \ = T_A V_A cos(angle(ov(T)_A, ov(V)_A)) - (ov(T)_A, ov(V)_B) dif t = T_A V_A cos(alpha) + T_B V_B cos(gamma) = 0$

=== Качение без скольжения по неподвижной поверхности

#figure(
  image("source-figures/lect0-1-20.png", width: 15%),
)
$ V_P = 0 - "М.Ц.С"; dif' A (ov(R)) = (ov(R), ov(V)_P) dif t = 0 $

== Потенциальные силы

Было повторно разобрана теория ППС, смотрите раздел "Потенциальное поле сил (ППС)"

=== Примеры потенциальных сил

1. Однородное поле силы тяжести

$ Pi = m g z $

2. Упругая пружина

#figure(
  image("source-figures/lect0-1-21.png", width: 40%),
  caption: [],
) <пружины>
@пружины, слева: $ Pi = (C (Delta l)^2)/2 $
@пружины, справа: $ Pi = (C (Delta phi)^2)/2 $

== Механические системы (МС)

=== Движение МС относительно центра масс

#figure(
  image("source-figures/lect0-1-22.png", width: 35%),
)
$ "CX'" parallel "OX", "CY'" parallel "OY", "CZ'" parallel "OZ" $
Оси координат, имеющие начало в центре масс и перемещающиеся поступательно, называются осями Кёнига. Движение МС относительно центра масс будем называть движением этой системы относительно осей Кёнига.

$ cases(
  ov(V)_a = ov(V)_r + ov(V)_e,
  ov(V)_e = ov(V)_c),
cases(
  ov(r)_j = ov(r)_c + ov(rho)_j,
  ov(r)_c = display((sum_j m_j ov(r)_j)/M),
), M = sum_j m_j $
$ov(rho)_c = 0 => display(sum_j) m_j ov(rho)_j = 0$

$display(cases(
  ov(K)'_c = sum_j [ov(rho)_j, m_j ov(V)_(j z)],
  ov(K)_O = sum_j [ov(r)_j, m_j ov(V)_(j a)]
))$

$ov(K)_O = display(sum_j [ov(r)_c + ov(rho)_j; m_j (ov(V)_(j r)+ ov(V)_(j e))])$

$display(sum_j [ov(r)_c; m_j ov(V)_(j z)] = [ov(r)_c; sum_j m_j ov(V)_(j z)] = 0)$

$display(sum_j [ov(rho)_j, m_j ov(V)_(j z)] = ov(K)'_c)$

$display(sum_j [ov(r)_c, m_j ov(V)_(j e)] = [ov(r)_c, sum_j (m_j) ov(V)_c])$

$display(sum_j [ov(rho)_j, m_j ov(V)_(j e)] = [sum_j m_j ov(rho)_j, ov(V)_c] = 0)$

$ov(V)_c = display(sum_j (m_j ov(V)_j)/M), ov(V)_(c r) = display((sum_j m_j ov(V)_(j r))/M) = 0 => display(sum_j m_j ov(V)_(j r)) = 0$

$ ov(K)_O = ov(K)'_c + [ov(r)_c; (sum_j m_j) ov(V)_c] $

==== Теорема об изменении кинетического момента МС в движении относительно центра масс

Производная по времени от кинетического момента МС в движении относительно центра масс равна векторной сумме моментов внешних сил относительно центра масс

$ (dif ov(K)_c) / (dif t) = sum_j ov(M)_c (ov(F)_j^((e))) = sum_j [ov(rho)_j, ov(F)_j^((e))] $

Доказательство

$display((dif ov(K)_O) / (dif t) = sum_j ov(M)_O (ov(F)_j^((e))) = sum_j [ov(r)_j, ov(F)_j^((e))]), ov(r)_j = ov(r)_c + ov(rho)_j$

$display((dif ov(K)_O) / (dif t) = sum_j [ov(r)_c, ov(F)_j^((e))] + sum_j [ov(rho)_j, ov(F)_j^((e))] = [ov(r)_c, sum_j ov(F)_j^((e))] + sum_j ov(M)_c (ov(F)_j^((e)))\; (dif ov(K)_O) / (dif t) = [ov(r)_c; M ov(W)_c] + \ + sum_j ov(M)_c (ov(F)_j^((e))))$

$display(M ov(W)_c) = sum_j ov(F)_j^((e))$

$display((dif ov(K)_O) / (dif t) = (dif ov(K)_c) / (dif t) + [(dif ov(r)_c)/(dif t), M ov(V)_c] + [ov(r)_c, dif/(dif t) (M ov(V)_c)] = (dif ov(K)_c) / (dif t) + [ov(r)_c, M ov(W)_c])$

$display((dif ov(K)_c) / (dif t) + cancel([ov(r)_c, M ov(W)_c]) = cancel([ov(r)_c; M ov(W)_c]) + sum_j ov(M)_c (ov(F)_j^((e))))$

=== ДУ плоскопараллельного движения твердого тела (@плоскопараллел)

#figure(
  image("source-figures/lect2-fig3.png", width: 40%),
  caption: [],
) <плоскопараллел>

$ cases(
  M ov(W)_c = sum_j ov(F)_j^((e)),
  (dif ov(K)_O) / (dif t) = sum_j ov(M)_c (ov(F)_j^((e))),
) $

$x': ov(K)'_c = J_(c z') ov(omega)$\
$y': display(M dot.double(X)_c = sum_j F_(j x)^((e)))$\
$z': display(J_(c z) dot (dif omega)/(dif t) = J_(c z) dot.double(phi) = sum_j M_(c z') (ov(F)_j^((e))))$

=== Принцип д'Аламбера

#figure(
  image("source-figures/lect2-fig4.png", width: 45%),
)

$m ov(W) = ov(F) + ov(R), ov(Phi) = -m ov(W)$ - сила инерции д'Аламбера

$ ov(F) + ov(R) + ov(Phi) = 0 $

Для точки: векторная сумма активных сил, реакций связи, действующих на точку и силы инерции д'Аламбера равна 0

Для МС: если к действующим на точки МС активным силам и реакциям связей добавить Даламберовы силы инерции, то полученная система сил будет уравновешанной

$ov(F)_j + ov(R)_j + ov(Phi)_j = 0$

${ov(F)_j, ov(R)_j, ov(Phi)_j} ~ 0$\
${ov(F)_1, ov(R)_1, ov(Phi)_1, ov(F)_2, ov(R)_2, ov(Phi)_2, ..., ov(F)_N, ov(R)_N, ov(Phi)_N} ~ 0$

$display(sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e)) + sum_j ov(Phi)_j = 0)$

$ forall "т. A" cases(
  sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e)) + sum_j ov(Phi)_j = 0,
  sum_j ov(M)_A (ov(F)_j^((e))) + sum_j ov(M)_A (ov(R)_j^((e))) + sum_j ov(M)_A (ov(Phi)_j) = 0
) $
$ "В проекциях": cases(
  sum_j F_(j x)^((e)) + sum_j R_(j x)^((e)) + sum_j Phi_(j x) = 0,
  sum_j F_(j y)^((e)) + sum_j R_(j y)^((e)) + sum_j Phi_(j y) = 0,
  sum_j F_(j z)^((e)) + sum_j R_(j z)^((e)) + sum_j Phi_(j z) = 0,
  sum_j M_(A x) (ov(F)_j^((e))) + sum_j M_(A x) (ov(R)_j^((e))) + sum_j M_(A x) (ov(Phi)_j) = 0,
  sum_j M_(A y) (ov(F)_j^((e))) + sum_j M_(A y) (ov(R)_j^((e))) + sum_j M_(A y) (ov(Phi)_j) = 0,
  sum_j M_(A z) (ov(F)_j^((e))) + sum_j M_(A z) (ov(R)_j^((e))) + sum_j M_(A z) (ov(Phi)_j) = 0,
) $

Метод решения задач динамики с помощью принципа д'Аламбера называется методом кинетостатики.

==== Главный вектор сил инерции д'Аламбера

$ ov(Phi) = sum_j ov(Phi)_j $

$display(M ov(W)_c = sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e)))$

$display(ov(Phi) = sum_j ov(Phi)_j = -(sum_j ov(F)_j^((e)) + sum_j ov(R)_j^((e))) = -M ov(W)_c)$

$ ov(Phi) = -M ov(W)_c $

==== Главный момент сил инерции д'Аламбера

$ ov(M)_O^(Phi) = sum_j ov(M)_O (ov(Phi)_j) $

$display((dif ov(K)_O) / (dif t) = sum_j ov(M)_O (ov(F)_j^((e))) + sum_j ov(M)_O (ov(R)_j^((e))))$

$display(ov(M)_O^(Phi) = sum_j ov(M)_O (ov(Phi)_j) = -(sum_j ov(M)_O (ov(F)_j^((e))) + sum_j ov(M)_O (ov(R)_j^((e)))))$

$ ov(M)_O^(Phi) = -(dif ov(K)_O) / (dif t) $

$display(ov(M)_C^(Phi) = sum_j ov(M)_C (ov(Phi)_j))$

$display((dif ov(K)'_C) / (dif t) = sum_j ov(M)_C (ov(F)_j^((e))) + sum_j ov(M)_C (ov(R)_j^((e))))$

$ ov(M)_C^(Phi) = -(dif ov(K)'_C) / (dif t) $

==== Пример задачи на принцип д'Аламбера

#figure(
  image("source-figures/lect2-fig8.png", width: 30%)
)

Дано: $omega = "const"$, $"OA" = l$\
Найти: $alpha$, $T$

$R = l sin(alpha)$\
$ov(Phi) = -m ov(W), Phi = M W = m omega^2 R = m omega^2 l sin(alpha)$\
$m ov(g) + ov(T) + ov(Phi) = 0$

$display(cases(
  x\: 0 - T sin(alpha) + Phi = 0\; T sin(alpha) - m omega^2 l sin(alpha) = 0,
  y\: -m g + T cos(alpha) + 0 = 0\; T cos(alpha) = m g,
))$

+ $sin(alpha) = 0, T_1 = m g$
+ $sin(alpha) != 0, T_2 = m omega^2 l, T_2 cos(alpha) = m g, cancel(m) omega^2 l cos(alpha) = cancel(m) g => cos(alpha) = g/(omega^2 l) < 1$
