SOURCES = file1.c file2.c file3.c
OBJECTS = $(patsubst %.c,%.o,$(SOURCES))

TEXT = Hello_World
REPLACED = $(subst _,$(space),$(TEXT))
STRIPPED = $(strip $(TEXT))

FILES = test.c prog.cpp
SUFFIXES = $(suffix $(FILES))
BASENAMES = $(basename $(FILES))

show:
	@echo "Original sources: $(SOURCES)"
	@echo "Generated objects: $(OBJECTS)"
	@echo "Original text: $(TEXT)"
	@echo "Replaced text: $(REPLACED)"
	@echo "Stripped text: $(STRIPPED)"
	@echo "File suffixes: $(SUFFIXES)"
	@echo "Base names: $(BASENAMES)"

.PHONY: show