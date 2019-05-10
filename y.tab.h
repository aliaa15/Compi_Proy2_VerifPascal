
/* A Bison parser, made by GNU Bison 2.4.1.  */

/* Skeleton interface for Bison's Yacc-like parsers in C
   
   Copyright (C) 1984, 1989, 1990, 2000, 2001, 2002, 2003, 2004, 2005, 2006
   Free Software Foundation, Inc.
   
   This program is free software: you can redistribute it and/or modify
   it under the terms of the GNU General Public License as published by
   the Free Software Foundation, either version 3 of the License, or
   (at your option) any later version.
   
   This program is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
   GNU General Public License for more details.
   
   You should have received a copy of the GNU General Public License
   along with this program.  If not, see <http://www.gnu.org/licenses/>.  */

/* As a special exception, you may create a larger work that contains
   part or all of the Bison parser skeleton and distribute that work
   under terms of your choice, so long as that work isn't itself a
   parser generator using the skeleton or a modified version thereof
   as a parser skeleton.  Alternatively, if you modify or redistribute
   the parser skeleton itself, you may (at your option) remove this
   special exception, which will cause the skeleton and the resulting
   Bison output files to be licensed under the GNU General Public
   License without this special exception.
   
   This special exception was added by the Free Software Foundation in
   version 2.2 of Bison.  */


/* Tokens.  */
#ifndef YYTOKENTYPE
# define YYTOKENTYPE
   /* Put the tokens into the symbol table, so that GDB and other debuggers
      know about them.  */
   enum yytokentype {
     T_IDENTIFIER = 258,
     T_REAL = 259,
     T_INTEGER = 260,
     T_PROGRAM = 261,
     T_VAR = 262,
     T_PROCEDURE = 263,
     T_FUNCTION = 264,
     T_BEGIN = 265,
     T_END = 266,
     T_WRITE = 267,
     T_READ = 268,
     T_DBL = 269,
     T_INT = 270,
     T_INPUT = 271,
     T_OUTPUT = 272,
     T_CHAR = 273,
     T_ASSIGNMENT = 274,
     T_CEQ = 275,
     T_CNE = 276,
     T_CLT = 277,
     T_CLE = 278,
     T_CGT = 279,
     T_CGE = 280,
     T_BOOLEAN = 281,
     T_TEXT = 282,
     T_OPAREN = 283,
     T_CPAREN = 284,
     T_COMMA = 285,
     T_DOT = 286,
     T_DOUBLEDOT = 287,
     T_COLON = 288,
     T_SEMICOLON = 289,
     T_PLUS = 290,
     T_MINUS = 291,
     T_MUL = 292,
     T_DIV = 293,
     T_AND = 294,
     T_OR = 295,
     T_NOT = 296,
     T_MOD = 297,
     T_OF = 298,
     T_OSPAREN = 299,
     T_CSPAREN = 300,
     T_ARRAY = 301,
     T_CHAR_DEF = 302,
     T_WHILE = 303,
     T_DO = 304,
     T_COMISIMPLE = 305,
     T_IF = 306,
     T_THEN = 307,
     T_ELSE = 308,
     T_USES = 309,
     TMINUS = 310,
     TPLUS = 311,
     TDIV = 312,
     TMUL = 313
   };
#endif
/* Tokens.  */
#define T_IDENTIFIER 258
#define T_REAL 259
#define T_INTEGER 260
#define T_PROGRAM 261
#define T_VAR 262
#define T_PROCEDURE 263
#define T_FUNCTION 264
#define T_BEGIN 265
#define T_END 266
#define T_WRITE 267
#define T_READ 268
#define T_DBL 269
#define T_INT 270
#define T_INPUT 271
#define T_OUTPUT 272
#define T_CHAR 273
#define T_ASSIGNMENT 274
#define T_CEQ 275
#define T_CNE 276
#define T_CLT 277
#define T_CLE 278
#define T_CGT 279
#define T_CGE 280
#define T_BOOLEAN 281
#define T_TEXT 282
#define T_OPAREN 283
#define T_CPAREN 284
#define T_COMMA 285
#define T_DOT 286
#define T_DOUBLEDOT 287
#define T_COLON 288
#define T_SEMICOLON 289
#define T_PLUS 290
#define T_MINUS 291
#define T_MUL 292
#define T_DIV 293
#define T_AND 294
#define T_OR 295
#define T_NOT 296
#define T_MOD 297
#define T_OF 298
#define T_OSPAREN 299
#define T_CSPAREN 300
#define T_ARRAY 301
#define T_CHAR_DEF 302
#define T_WHILE 303
#define T_DO 304
#define T_COMISIMPLE 305
#define T_IF 306
#define T_THEN 307
#define T_ELSE 308
#define T_USES 309
#define TMINUS 310
#define TPLUS 311
#define TDIV 312
#define TMUL 313




#if ! defined YYSTYPE && ! defined YYSTYPE_IS_DECLARED
typedef int YYSTYPE;
# define YYSTYPE_IS_TRIVIAL 1
# define yystype YYSTYPE /* obsolescent; will be withdrawn */
# define YYSTYPE_IS_DECLARED 1
#endif

extern YYSTYPE yylval;


