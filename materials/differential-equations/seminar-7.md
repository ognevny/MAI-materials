## Семинар 7

### ДУ высших порядков

#### ЛДУ высших порядков

p<sub>n</sub>(x)y<sup>(n)</sup> + p<sub>n-1</sub>(x)y<sup>(n-1)</sup> + ... + p<sub>2</sub>(x)y<sup>''</sup> + p<sub>1</sub>(x)y<sup>'</sup> + p<sub>0</sub>(x)y = f(x)

ЛОДУ при f(x) = 0, иначе - ЛНДУ.

#### ЛОДУ высших порядков

p<sub>n</sub>(x)y<sup>(n)</sup> + p<sub>n-1</sub>(x)y<sup>(n-1)</sup> + ... + p<sub>2</sub>(x)y<sup>''</sup> + p<sub>1</sub>(x)y<sup>'</sup> + p<sub>0</sub>(x)y = 0

Функции y<sub>1</sub>(x), y<sub>2</sub>(x), ..., y<sub>2</sub>(x) называются ЛНЗ на (a, b), если тождество: <a>&alpha;<sub>1</sub>y<sub>1</sub> + &alpha;<sub>2</sub>y<sub>2</sub> + ... + &alpha;<sub>n</sub>y<sub>n</sub> = 0</a> выполняется только когда все <a>&alpha;<sub>1</sub> = &alpha;<sub>2</sub> = ... = &alpha;<sub>n</sub> = 0</a>.

Если функции y<sub>1</sub>(x), y<sub>2</sub>(x), ..., y<sub>n</sub>(x) дифференцируемы (n - 1) раз, то из них можно построить определитель n-ого порядка.

<img src=source-figures/sem7-1.png>

Если функции y<sub>1</sub>(x), y<sub>2</sub>(x), ..., y<sub>n</sub>(x) являются решениями ЛОДУ и являются ЛНЗ, то определитель Вронского этой системы функций не обращается в ноль ни в одной точке промежутка (a, b).

Совокупность n ЛНЗ на промежутке (a, b) решений ЛОДУ называется ФСР этого уравнения.

#### ЛОДУ высших порядков с постоянными коэффициентами

a<sub>n</sub>y<sup>(n)</sup> + a<sub>n-1</sub>y<sup>(n-1)</sup> + ... + a<sub>2</sub>(x)y<sup>''</sup> + a<sub>1</sub>y<sup>'</sup> + a<sub>0</sub>y = 0; <a>a<sub>n</sub>, a<sub>n-1</sub>, ..., a<sub>0</sub> &isin; &Ropf;</a>.

Характеристическое уравнение <a>a<sub>n</sub>&lambda;<sup>n</sup> + a<sub>n-1</sub>&lambda;<sup>n-1</sup> + ... + a<sub>2</sub>&lambda;<sup>2</sup> + a<sub>1</sub>&lambda; + a<sub>0</sub> = 0</a>, n корней <a>&lambda;<sub>1</sub>, &lambda;<sub>2</sub>, ..., &lambda;<sub>n</sub></a>, тогда частные решения ЛОДУ принимают вид <a>y<sub>j</sub> = e<sup>&lambda;<sub>j</sub>x</sup></a>, <a>y<sub>j+1</sub> = e<sup>&lambda;<sub>j+1</sub>x</sup></a>...

Если <a>y<sub>j,j+1</sub> = &alpha; &plusmn; i&beta;</a> - решение ЛОДУ, где <a>&alpha;</a> = Re(y) - действительная часть, <a>&beta;</a> = Im(y) - мнимая часть, то и действительная, и мнимая части являются решениями ЛОДУ.

<a>y<sub>j,j+1</sub> = e<sup>(&alpha;&plusmn;i&beta;)x</sup> = e<sup>&alpha;x</sup>(cos&beta;x &plusmn; isin&beta;x)</a>.

<img src=source-figures/sem7-2.png>
