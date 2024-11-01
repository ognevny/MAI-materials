## Лекция 6

### Условный оператор if

```pascal
if <условие>
then
<оператор1>
else
<оператор2>
```

```pascal
if <условие>
then
begin
<операторы>
end
else
begin
<операторы>
end;
```

```pascal
if A = 0 then Write('Нуль!');

if A < 0 then
  Write('Отрицательное число')
else
  Write('Положительное число');
```

```pascal
if Rating >= 75 then
  WriteLn('Отлично')
else
  if Rating >= 50 then
    WriteLn('Хорошо')
  else
    WriteLn('Удовлетворительно');
```

### Оператор выбора case

case <выражение> of
<константа1> <оператор1>
<константа2> <оператор2>
...
<константаn> <операторn>
otherwise (ИЛИ else)
end

```pascal
Program Letters;
Var
  Ch: Char;
begin
  Write('Введите символ: '); ReadLn(Ch);
  Wirte(Ch, ' это ');
  case Ch of
  'a', 'e', 'i', 'o', 'n': WriteLn('гласная');
  'w', 'y': WriteLn('полугласная');
  '.', ',', ';', ':', '?', '!': WriteLn('знак препинания');
  else
    if (Ch >= 'a') and (Ch <= 'z') then
      WriteLn('Согласная');
    else
      WriteLn('нераспознаваемый символ');
  end; {case}
end.
```

### Оператор перехода goto

Label 10;
...
begin
...
goto 10;
...
10: A := B \* C;
...
end.
