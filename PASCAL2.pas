program PASCAL2;


    var
      numero: integer;


    begin
      writeln('Escriba un numero');
      readln(numero);
      if numero<0 then
        writeln('El numero es negativo.')
      else if numero>0 then
        writeln('El numero es positivo.')
      else
        writeln('El numero es cero.')
    end.