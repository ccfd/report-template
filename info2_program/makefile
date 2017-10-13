all: main

main: main.o rk4.o
	g++ -o $@ $^

%.o: %.cpp
	g++ -c $^
