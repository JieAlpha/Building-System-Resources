CC = gcc
CFLAGS = -Wall -g

all: calculator

calculator: main.o calc.o
	$(CC) -o calculator main.o calc.o

main.o: main.c calc.h
	$(CC) -c $(CFLAGS) main.c

calc.o: calc.c calc.h
	$(CC) -c $(CFLAGS) calc.c

clean:
	rm -f calculator *.o

.PHONY: clean all