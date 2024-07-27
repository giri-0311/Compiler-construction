%{
#include <stdio.h> 
#include <strings.h>
#define MAX_LEN 1000

typedef struct {
    int line_number;
    char lexeme[MAX_LEN];
    char token_type[MAX_LEN];
} Token;

Token tokens[MAX_LEN];
int line_count = 1;
int token_count = 0;
%}

A [aA]
B [bB]
C [cC]
D [dD]
E [eE]
F [fF]
G [gG]
H [hH]
I [iI]
J [jJ]
K [kK]
L [lL]
M [mM]
N [nN]
O [oO]
P [pP]
Q [qQ]
R [rR]
S [sS]
T [tT]
U [uU]
V [vV]
W [wW]
X [xX]
Y [yY]
Z [zZ]

%%

{A}{N}{D} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{A}{R}{R}{A}{Y} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{B}{E}{G}{I}{N} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{D}{O} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{D}{O}{W}{N}{T}{O} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{E}{L}{S}{E} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{E}{N}{D} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{F}{O}{R} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{I}{F} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{N}{O}{T} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{O}{F} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{O}{R} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{P}{R}{O}{G}{R}{A}{M} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{R}{E}{A}{D} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{T}{H}{E}{N} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{T}{O} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{V}{A}{R} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{W}{H}{I}{L}{E} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{W}{R}{I}{T}{E} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{W}{R}{I}{T}{E}{L}{N} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{I}{N}{T}{E}{G}{E}{R} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{R}{E}{A}{L} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{C}{H}{A}{R} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{B}{O}{O}{L}{E}{A}{N} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{T}{R}{U}{E} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}
{F}{A}{L}{S}{E} {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Keyword"); token_count++;}

":=" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Assignment Operator"); token_count++;}
":" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
"," {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
"." {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
".." {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
"=" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
">=" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
">" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"[" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
"<=" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"(" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
"<" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"-" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"<>" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"+" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"]" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
")" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
";" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Punctuator"); token_count++;}
"/" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"*" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}
"%" {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Operator"); token_count++;}

\"[^\"\n]*\"   {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "String"); token_count++;}  /* String token */

[a-zA-Z][_a-zA-Z0-9]*  {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Identifier"); token_count++;}
[0-9]+                  {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Number"); token_count++;}
[0-9]+"."[0-9]+         {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Real Number"); token_count++;}

[\t\f] {}
[\n] {line_count++;}
" " {}
"//"(.)*"\n" {line_count++;}

. {strcpy(tokens[token_count].lexeme, yytext); tokens[token_count].line_number = line_count; strcpy(tokens[token_count].token_type, "Invalid Token"); token_count++;}

%%

int main() 
{ 
    char filename[100];
    printf("Enter input file name: ");
    scanf("%s", filename);

    yyin = fopen(filename, "r");
    if (yyin == NULL) {
        printf("Error opening file: %s\n", filename);
        return 1;
    }

    yylex();
    
    printf("Line Number\tToken\t\t\t\tToken Type\n");
    printf("-----------\t-----\t\t\t\t----------\n");
    for(int i = 0; i < token_count; i++) {
    	printf("%d\t\t%s\t\t\t\t%s\n", tokens[i].line_number, tokens[i].lexeme, tokens[i].token_type);
    }


    fclose(yyin);
    return 0;
}
