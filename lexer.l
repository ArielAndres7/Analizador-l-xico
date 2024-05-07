%{
#include <stdio.h>
%}

%option noyywrap

%%
"//".*                  { printf("COMMENT\n"); }
"f"                     { puts("floatdcl"); }
"i"                     { puts("intdcl"); }
"p"                     { puts("print"); }
[a-zA-Z][a-zA-Z0-9]*    { puts("id"); }
"="                     { puts("assign"); }
"+"                     { puts("plus"); }
[0-9]+.[0-9]+          { puts("fnum"); }
[0-9]+                  { puts("inum"); }
[ \t\n]+                { /* ignore whitespace/newlines / }
.                       { / ignore other characters */ }
%%

int main() {
    return yylex();
}
