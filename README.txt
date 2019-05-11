compilacion de programa:
    flex pascal.l
    bison -dy pascal.y 
    gcc lex.yy.c y.tab.c -lfl -o VerificadorDeSintaxisDePascal.exe

al ejecutar:
    VerificadorDeSintaxisDePascal.exe < nombre del archivo a verificar