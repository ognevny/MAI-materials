## Лекция 7

`while <выражение> do <опреатор>`

#### Составить программу, ведущую обратный отсчёт от 10 до 0 и выводящую на экран текущее значение...

...По окончании отсчёта вывести соответствующее сообщения.

```pascal
program countdown;
var
  seconds: integer;

begin
  writeln('Отсчёт начат...');
  seconds := 10;
  while seconds >= 10 do
    begin
      write(seconds:4);
      seconds := seconds - 1;
    end;
  writeln;
  writeln('Старт!');
end.
```

`repeat <оператор> until <выражение>`

```pascal
program countdown;
var
  seconds: integer;

begin
  writeln('Отсчёт начат...');
  seconds := 10;
  repeat
    write(seconds:4);
    seconds := seconds - 1;
  until seconds < 0;
  writeln;
  writeln('Старт!');
end.
```

`for <переменная> := <значение> to <значение> do <оператор>` (для уменьшения на 1 используется
downto)

```pascal
program countdown;
var
  seconds: integer;

begin
  writeln('Отсчёт начат...');
  for seconds := 10 downto 0 do
    write(seconds:4);
  writeln;
  writeln('Старт!');
end.
```

### Процедуры и функции

Процедура:

```pascal
program ...;
  label ...;
  const ...;
  var ...;
```

```pascal
procedure имя[(формальные параметры)];
<раздел описаний>
begin
<тело процедуры>
end;
```

Вызов процедуры: `имя[(фактические параметры)];`

```pascal
program usefunction;
var
  a: real;
  z: real;

procedure power(x, y: real; var res: real): real;
begin
  res := exp(y * ln(x));
end;

begin
  a := 2.5;
  power(a, 1.5, z);
  writeln('z =', power(a, 1.5):7:4);
end.
```

Функции:

```pascal
program usefunction;
var
  a: real;

function power(x, y: real): real;
begin
  power := exp(y * ln(x));
end;

begin
  a := 2.5;
  writeln('z =', power(a, 1.5):7:4);
end.
```
