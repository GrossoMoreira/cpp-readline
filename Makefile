CC=g++
FLAGS=-std=c++11 -c
LIBS=-lreadline

all:
	@mkdir obj
	${CC} ${FLAGS} src/Console.cpp -o obj/Console.o ${LIBS}
	${CC} ${FLAGS} src/nargv/nargv.c -o obj/nargv.o ${LIBS}
	ar rcs cpp-readline.a obj/*

clean:
	@rm -rf obj
	@rm -f cpp-readline.a 
