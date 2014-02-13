/*
   y86 lexxer
*/

digit       [0-9]
immediate   ${digit}

%%
{digit}     printf("Found a digit %s !\n", yytext);
.           printf("");
%%

main(){
    printf("Input:\n");
    yylex();
}
