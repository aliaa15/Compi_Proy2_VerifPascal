%{
/*
 * pascal.l
 *
 * lex input file for pascal scanner
 *
 * extensions: to ways to spell "external" and "->" ok for "^".
 */

#include <stdio.h>
#include "y.tab.h"

int line_no = 1;

%}

%x COMMENT1 COMMENT2 COMMENT3

%option noyywrap

PAL     [A-Za-z_]+
NUM     [0-9]
ID      {PAL}{PAL|NUM}*

%%

"{"                  BEGIN(COMMENT1);
<COMMENT1>[^}\n]+
<COMMENT1>\n            ++line_no;
<COMMENT1>"}"        BEGIN(INITIAL);

"(*"                 BEGIN(COMMENT2);
<COMMENT2>[^)*\n]+
<COMMENT2>\n            ++line_no;
<COMMENT2>"*)"       BEGIN(INITIAL);
<COMMENT2>[*)]

"\'"                     return(T_COMISIMPLE);
":="                    return(T_ASSIGNMENT);
"="	                    return(T_CEQ);
"<>"                    return(T_CNE);
"<"                     return(T_CLT);
"<="                    return(T_CLE);
">"                     return(T_CGT);
">="                    return(T_CGE);
"("                     return(T_OPAREN);
")"                     return(T_CPAREN);
"["                     return(T_OSPAREN);
"]"                     return(T_CSPAREN);
"."                     return(T_DOT);
".."                    return(T_DOUBLEDOT);
","                     return(T_COMMA);
"+"                     return(T_PLUS);
"-"                     return(T_MINUS);
"*"                     return(T_MUL);
"/"                     return(T_DIV);
"mod"                   return(T_MOD);
"and"                   return(T_AND);
"or"                    return(T_OR);
"array"                 return(T_ARRAY);
"boolean"               return(T_BOOLEAN);
"of"                    return(T_OF);
"not"                   return(T_NOT);
"input"                 return(T_INPUT);
"output"                return(T_OUTPUT);
";"                     return(T_SEMICOLON);
":"                     return(T_COLON);
"if"                    return(T_IF);
"then"                  return(T_THEN);
"else"                  return(T_ELSE);
"while"                 return(T_WHILE);
"do"                    return(T_DO);
"program"|"PROGRAM"     return(T_PROGRAM);
"procedure"	            return(T_PROCEDURE);
"function"|"FUNCTION"	return(T_FUNCTION);
"end"|"END"  	  		return(T_END);
"begin"|"BEGIN"			return(T_BEGIN);
"var"|"VAR" 	        return(T_VAR);
"integer"|"INTEGER"     return(T_INTEGER);
"real"|"REAL"           return(T_REAL);
"readln"|"READLN"	    return(T_READ);
"writeln"|"WRITELN"		return(T_WRITE);
"char"|"CHAR"           return(T_CHAR);
"uses"|"USES"           return(T_USES);
[A-Za-z_][A-Za-z0-9_]*  return(T_IDENTIFIER);
[0-9]+\.[0-9]*          return(T_DBL);
[0-9]+                  return(T_INT);
\n                      line_no++;
[\t\f " "\ ]              ;
.   { fprintf (stderr, "'%c' (0%o): illegal character at line %d\n", yytext[0], yytext[0], line_no);}
%%

