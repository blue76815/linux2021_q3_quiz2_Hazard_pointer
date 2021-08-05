SHELL = /bin/bash
CC = gcc
CFLAGS = -Wall
SRC = $(wildcard *.c)
EXE = $(patsubst %.c, %, $(SRC))

all: ${EXE}

%:	%.c
	${CC} ${CFLAGS} -o $@ $@.c -lpthread -g -fsanitize=thread

clean:
	rm ${EXE}
