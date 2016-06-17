CC=g++
FLAGS=-std=c++11 -c
LIBS=-lreadline

all:
	@mkdir -p obj
	${CC} ${FLAGS} src/Console.cpp -o obj/Console.o ${LIBS}
	${CC} ${FLAGS} src/nargv/nargv.c -o obj/nargv.o ${LIBS}
	ar rcs libcpp-readline.a obj/*

clean:
	@rm -rf obj
	@rm -f libcpp-readline.a 
