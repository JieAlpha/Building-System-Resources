C_FILES = $(wildcard *.c)
H_FILES = $(wildcard *.h)
SINGLE_CHAR_FILES = $(wildcard ?.c)

%.o: %.c
	$(CC) -c $< -o $@

show_matches:
	@echo "All .c files: $(C_FILES)"
	@echo "All .h files: $(H_FILES)"
	@echo "Single character named .c files: $(SINGLE_CHAR_FILES)"

setup:
	touch a.c b.c long.c header.h
    
clean:
	rm -f *.c *.h *.o

.PHONY: show_matches setup clean