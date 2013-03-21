UNAME := $(shell uname)

CC = gcc
ifeq ($(UNAME), Linux)
	CFLAGS = -lpthread -lnsl -std=gnu99 -lcrypt
else
	CFLAGS = -lpthread -lnsl -lsocket -std=gnu99 -lcrypt
endif

all: myproxy

myproxy:myproxy.c
	gcc -o $@ $< $(CFLAGS)

clean:
	rm myproxy
