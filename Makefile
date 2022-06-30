CC = gcc
CFLAGS = -g -Wall

HEADERS = lib.h 

default: prog

prog: lib.o helper.o main.o
	$(CC) $(CFLAGS) -o prog lib.o helper.o main.o

lib.o: lib.c $(HEADERS)
	$(CC) $(CFLAGS) -c lib.c

helper.o: helper.c
	$(CC) $(CFLAGS) -c helper.c

main.o: main.c
	$(CC) $(CFLAGS) -c main.c

clean:
	-rm -f lib.o helper.o main.o
	-rm -f prog
