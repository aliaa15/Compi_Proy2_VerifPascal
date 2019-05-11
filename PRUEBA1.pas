program MediadelVector;
var
  vector: array [1..5] of real;
  suma, media: real;
begin
  writeln('Media de un vector con 5 elementos.');
  writeln;
  writeln('Introduce el primer elemento');
  readln(vector[1]);
  writeln('Introduce el segundo elemento');
  readln(vector[2]);
  writeln('Introduce el tercer elemento');
  readln(vector[3]);
  writeln('Introduce el cuarto elemento');
  readln(vector[4]);
  writeln('Introduce el quinto elemento');
  readln(vector[5]);
  suma := vector[1] + vector[2] + vector[3] + vector[4] + vector[5];
  media := suma / 5;
  writeln('La media de sus elementos es: ', media);
end.