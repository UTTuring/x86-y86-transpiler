/*
   y86 lexxer
*/

digit       [0-9]*
immediate   \${digit}
register    %[eaxcdbpsidhil]{2,3}

%%
{immediate}     printf("Found immediate %s !\n", yytext);
{register}      printf("Found register %s !\n", yytext);
.               printf("");
%%

main(){
    printf("Input:\n");
    yylex();
}
