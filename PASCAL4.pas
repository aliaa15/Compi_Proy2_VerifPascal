program PASCAL4;

var
     tabla, numero: integer;


   begin
     for tabla := 1 to 5 do
       begin
       for numero := 1 to 10 do
         writeln( tabla, 'por ', numero ,'es', tabla * numero );
       writeln;                 (* Línea en blanco *)
       end;
   end.