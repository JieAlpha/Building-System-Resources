REL_PATH = ./src/test.c
SYMLINK_PATH = ./link/file.c

show_paths:
	@echo "Real path: $(realpath $(SYMLINK_PATH))"
	@echo "Absolute path: $(abspath $(REL_PATH))"
	@echo "Directory part: $(dir $(REL_PATH))"

setup:
	mkdir -p src link
	touch src/test.c
	rm -f link/file.c
	ln -s ../src/test.c link/file.c

clean:
	rm -rf src link

.PHONY: show_paths setup clean
