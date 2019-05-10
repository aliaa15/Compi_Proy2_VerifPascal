flex pascal.l
bison -dy pascal.y 
gcc lex.yy.c y.tab.c -lfl -o VerificadorDeSintaxisDePascal.exe