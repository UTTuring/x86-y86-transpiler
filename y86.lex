/*
   y86 lexxer
*/

digit       [0-9]
hexalpha    [a-fA-F]
hex         ({digit}|{hexalpha}){1,8}
number      [0-9]*
immediate   \${number}
register    %[eaxcdbpsidhil]{2,3}
memory      0[xX]{hex}
rrmovl      "movl {register}, {register}"

%%
{immediate}     printf("Found immediate %s\n", yytext);
{register}      printf("Found register %s\n", yytext);
{memory}        printf("Found memory location %s\n", yytext);
.               printf("");
%%

main(){
    printf("Input:\n");
    yylex();
}
