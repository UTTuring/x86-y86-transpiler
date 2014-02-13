CFLAGS=-lfl

lex: lex.yy.c
	gcc lex.yy.c -lfl -o lex

lex.yy.c: y86.lex
	flex y86.lex
clean:
	rm -rf lex
	rm -rf lex.yy.c
