## Лекция 4

### Алфавит языка Паскаль[^1]

1. Буквы - это прописные (A...Z) и строчные (a...z) буквы латинского алфавита и символ подчёркивания
   '\_'

2. Цифры - это арабские цифры ()...

### Общая структуры программы на Паскале

1.[^*] Заголовок программы

2. Входной комментарий

3. Раздел описаний

4. Раздел операторов

```pascal
Program Имя(Input, Output);

{ Входной комментарий }

Label...
Const...
Type...
Var...
Procedure, Function...

begin
  оператор 1;
  оператор 2;
  ...
  оператор N
end.
```

### Целые типы

| тип       | диапозон значений        | размер  |
| --------- | ------------------------ | ------- |
| ShortInt: | -128...127               | 1 байт  |
| Integer:  | -32768...32767           | 2 байта |
| LongInt:  | -2147483648...2147483647 | 4 байта |
| Byte:     | 0...255                  | 1 байт  |
| Word:     | ...                      | .. байт |

`div` - деление нацело
`mod` - получение остатка от деления

```pascal
Const
  N = 10;
  M = 100;

Var
  i, j: integer
```

### Вещественные типы

| тип      | количество значящих знаков | диапозон значений                |
| -------- | -------------------------- | -------------------------------- |
| Single   | 7...8                      | ...                              |
| Real     | 11...12                    | ...                              |
| Double   | 15...16                    | ...                              |
| Extended | 19...20                    | ...                              |
| Comp     | 19...20                    | -2 \* 10^63 + 1...2 \* 10^63 - 1 |

_Возведение в степень_: `y := Exp(x * Ln(a));`

[^*]: необязательно для программы

[^1]: автор не успел за презентацией
