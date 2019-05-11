%{
/*
* pascal.y
*
* Pascal grammar in Yacc format, based originally on BNF given
* in "Standard Pascal -- User Reference Manual", by Doug Cooper.
* This in turn is the BNF given by the ANSI and ISO Pascal standards,
* and so, is PUBLIC DOMAIN. The grammar is for ISO Level 0 Pascal.
* The grammar has been massaged somewhat to make it LALR, and added
* the following extensions.
*
* constant expressions
* otherwise statement in a case
* productions to correctly match else's with if's
* beginnings of a separate compilation facility
*/
#include <stdio.h>
#include <stdlib.h>
extern int yylex();
void yyerror(char *msg);
%}

%token T_IDENTIFIER T_REAL T_INTEGER T_PROGRAM T_VAR T_PROCEDURE T_FUNCTION T_BEGIN T_END T_WRITE T_READ T_DBL T_INT T_INPUT T_OUTPUT T_CHAR
%token T_ASSIGNMENT T_CEQ T_CNE T_CLT T_CLE T_CGT T_CGE T_BOOLEAN T_TEXT
%token T_OPAREN T_CPAREN T_COMMA T_DOT T_DOUBLEDOT T_COLON T_SEMICOLON
%token T_PLUS T_MINUS T_MUL T_DIV T_AND T_OR T_NOT T_MOD
%token T_OF T_OSPAREN T_CSPAREN T_ARRAY T_CHAR_DEF
%token T_WHILE T_DO T_COMISIMPLE
%token T_IF T_THEN T_ELSE T_USES T_INT_ARR

%left TPLUS TMINUS
%left TMUL TDIV

%start program

%%

program : T_PROGRAM id T_SEMICOLON
		librerias
		declarations
		subprogram_declarations
		compound_statement
		T_DOT
		;

librerias : T_USES id T_SEMICOLON
		|
		;
		
declarations : declarations T_VAR despuees_var
		|
		;

despuees_var : identifier_list T_COLON type T_SEMICOLON despuees_var
		|
		;

identifier_list : id
		| identifier_list T_COMMA id
		;

type : standard_type
		| T_ARRAY  T_OSPAREN T_INT_ARR T_CSPAREN T_OF standard_type
		;

standard_type : T_INTEGER
		| T_REAL 
		| T_CHAR 
		| T_BOOLEAN
		;

subprogram_declarations : subprogram_declarations subprogram_declaration T_SEMICOLON
		|
		;

subprogram_declaration : subprogram_head declarations compound_statement ;

subprogram_head : T_FUNCTION id arguments T_COLON standard_type T_SEMICOLON
		| T_PROCEDURE id arguments T_SEMICOLON
		;

arguments : T_OPAREN parameter_list T_CPAREN
		|
		;

parameter_list : identifier_list T_COLON type
		| parameter_list T_SEMICOLON identifier_list T_COLON type
		|
		;

compound_statement :
		T_BEGIN optional_statements T_END
		;

optional_statements : statement_list
		|
		;

statement_list : statement
		| statement_list T_SEMICOLON statement
		;

statement : variable T_ASSIGNMENT expression
		| procedure_statement
		| compound_statement
		| T_IF expression T_THEN statement T_ELSE statement
		| T_WHILE expression T_DO statement
		| T_READ read
		| T_WRITE write
		|
		;

read : T_OPAREN contenido_read T_CPAREN
		| 
		;

contenido_read : id contenido_read
		| id T_OSPAREN T_INT T_CSPAREN
		;

write : T_OPAREN contenido_write T_CPAREN
		| 
		;

contenido_write : T_COMISIMPLE texto T_COMISIMPLE contenido_write
		| T_COMMA contenido_write
		| T_PLUS contenido_write
		| id contenido_write
		|
		;

texto : id texto
		| simbolos texto
		| T_INT texto
		|
		;

simbolos : T_OPAREN 
		| T_CPAREN 
		| T_COMMA 
		| T_DOT 
		| T_DOUBLEDOT 
		| T_COLON 
		| T_SEMICOLON
		| T_PLUS
		| T_MINUS
		| T_MUL
		| T_DIV
		| T_CEQ
		| T_CNE
		| T_CLT
		| T_CLE
		| T_CGT
		| T_CGE
		;

variable : id
		| id T_OSPAREN expression T_CSPAREN
		;

procedure_statement : id
		| id T_OPAREN expression_list T_CPAREN
		;

expression_list : expression
		| expression_list T_COMMA expression
		;

expression : simple_expression
		| simple_expression relop simple_expression
		;
		
relop : T_CEQ
        | T_CNE
        | T_CLT
        | T_CLE
        | T_CGT
        | T_CGE
        ;

simple_expression : term
		| sign term
		| simple_expression sign term
		| simple_expression T_OR term
		;

sign : T_PLUS
		| T_MINUS
		;
		
term : factor
		| term mulop factor
		;
		
mulop : T_MUL
		| T_DIV
		;

factor : variable
		| id T_OPAREN expression_list T_CPAREN
		| num
		| T_OPAREN expression T_CPAREN
		| T_NOT factor
		;

num : T_INT
		| T_DBL
		;
	
id : T_IDENTIFIER ;

%%
extern int line_no;
extern char *yytext;

void yyerror(char *s) {
     fprintf(stderr,"%s->'%s', linea %d \n", s, yytext, line_no);
     exit(1);
}

int main() {
	yyparse();
	printf("ARCHIVO CORRECTO!");
	return 0;
}
