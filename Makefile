
CC ?= gcc
LOLCAT_SRC ?= lolcat.c
CFLAGS ?= -std=c11 -Wall -Wextra
DESTDIR ?= /usr/local/bin

all: lolcat

debug: CFLAGS += -g
debug: all

lolcat: $(LOLCAT_SRC)
	$(CC) $(CFLAGS) -o $@ $^

clean:
	rm -f lolcat
	rm -f lolcat.o
