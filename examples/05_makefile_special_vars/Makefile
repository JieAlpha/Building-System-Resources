all: program

program: source1.c source2.c
	@echo "All prerequisites: $^"
	@echo "Target name: $@"
	@echo "First prerequisite: $<"
	$(CC) -o $@ $^

test_vars: a.c b.c a.c
	@echo "All prerequisites (with duplicates): $+"
	@echo "All prerequisites (without duplicates): $^"

.PHONY: all test_vars