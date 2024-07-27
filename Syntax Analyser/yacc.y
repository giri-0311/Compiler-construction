%{
#include<stdio.h>
#include<math.h>
#include<stdlib.h>
extern int yylex();
extern int yyparse();
extern FILE *yyin;

%}

%left T_LT T_GT T_LE T_GE T_EQUAL T_UNEQUAL
%left T_PLUS T_MINUS T_OR
%left T_MUL T_DIV T_MOD T_AND
%right T_NOT

%token T_PROGRAM T_VAR
%token T_INT
%token T_REAL
%token T_ID
%token T_STRING
%token T_BEGIN T_END
%token T_READ T_WRITE
%token T_IF T_THEN T_ELSE T_WHILE T_DO T_TO T_DOWNTO T_FOR
%token T_EQUAL T_UNEQUAL T_GE T_GT T_LE T_LT T_ASSIGN T_PLUS T_MINUS T_MUL T_DIV T_OR T_AND T_NOT T_MOD
%token T_LB T_RB T_LP T_RP T_SEMI T_DOT T_DOTDOT T_COMMA T_COLON
%token T_INTEGER_TYPE T_BOOLEAN_TYPE T_CHAR_TYPE T_REAL_TYPE
%token T_ARRAY T_OF

%%

S: T_PROGRAM T_ID T_SEMI var_declaration main T_DOT {printf("valid input\n");return 0;}
;

var_declaration: T_VAR var_decl_list 
| 
;

var_decl_list: var_decl_list var_decl
| var_decl
;

var_decl: name_list T_COLON type_dec T_SEMI
;

name_list: name_list T_COMMA T_ID
| T_ID
;

type_dec: type
| array_type_decl
;

type: T_INTEGER_TYPE
|T_BOOLEAN_TYPE
|T_CHAR_TYPE
|T_REAL_TYPE
;

array_type_decl: T_ARRAY T_LB x T_RB T_OF type
;

x: const_value T_DOTDOT const_value
;

const_value: num|T_MINUS num
;

main: T_BEGIN stmt_list T_END
;

stmt_list: stmt T_SEMI stmt_list
| stmt T_SEMI
;

stmt: write_stmt
| read_stmt
| assign_stmt
| block_stmt
| cond_stmt
| loop_stmt
;

write_stmt: T_WRITE x1 
;

x1: T_LP T_STRING T_RP
| T_LP variable_list T_RP
;

variable_list: T_ID T_COMMA variable_list
| T_ID
;

read_stmt: T_READ T_LP y T_RP
;

y:T_ID
| array_access
;

assign_stmt: T_ID T_ASSIGN assign_expr
;

assign_expr: id
    | T_LP assign_expr T_RP
    | T_MINUS assign_expr
    | assign_expr T_PLUS assign_expr
    | assign_expr  T_MINUS assign_expr
    | assign_expr T_MUL assign_expr
    | assign_expr T_DIV assign_expr
    | assign_expr T_MOD assign_expr
    ;
array_access: T_ID T_LB id T_RB
    ;


block_stmt: T_BEGIN stmt_list T_END
;

cond_stmt: T_IF condition T_THEN block_stmt
| T_IF condition T_THEN block_stmt T_ELSE block_stmt
;

loop_stmt: T_WHILE condition T_DO block_stmt
| T_FOR T_ID T_ASSIGN expr a expr T_DO block_stmt
;

condition: boolean_expr
         | relational_expr
         ;

boolean_expr: boolean_value
            | T_NOT boolean_expr
            | T_NOT T_LP boolean_expr T_RP
            | boolean_expr T_AND boolean_expr
            | boolean_expr T_OR boolean_expr
            ;

boolean_value:T_ID
;
relational_expr: expr T_EQUAL expr
               | expr T_UNEQUAL expr
               | expr T_LT expr
               | expr T_GT expr
               | expr T_LE expr
               | expr T_GE expr
               ;
               
expr: id
    | T_LP expr T_RP
    | unary_expr
    | expr T_PLUS expr
    | expr T_MINUS expr
    | expr T_MUL expr
    | expr T_DIV expr
    | expr T_MOD expr
    ;
    
unary_expr: T_NOT boolean_expr
| T_MINUS expr
;

id: T_ID
    | num
    | array_access
    ;

num: T_INT
| T_REAL
;

a: T_TO
| T_DOWNTO
;
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

    yyparse();
    
    fclose(yyin);
    return 0;
}

void yyerror(){
printf("Syntax error..\n");
}
