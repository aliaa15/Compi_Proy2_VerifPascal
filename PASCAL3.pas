program case1;


    var
      letra: char;


    begin
      WriteLn('Escriba un letra');
      ReadLn(letra);
      case letra of
        ' ':                 WriteLn('Un espacio');
        'A'..'Z', 'a'..'z':  WriteLn('Una letra');
        '0'..'9':            WriteLn('Un digito');
        '+', '-', '*', '/':  WriteLn('Un operador');
      else
        WriteLn('No es espacio, ni letra, ni digito, ni operador');
      end;
    end.