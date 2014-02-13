CFLAGS=-lfl

lex: lex.yy.c
	gcc lex.yy.c -lfl -o lex
clean:
	rm -rf lex
	rm -rf lex.yy.c
