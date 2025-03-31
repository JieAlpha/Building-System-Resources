CC = gcc
CFLAGS := -Wall -g
COMPILER ?= $(CC)
CFLAGS += -O2

show_vars:
	@echo "CC = $(CC)"
	@echo "CFLAGS = $(CFLAGS)"
	@echo "COMPILER = $(COMPILER)"

hello: hello.c
	$(CC) $(CFLAGS) -o $@ $<

.PHONY: show_vars