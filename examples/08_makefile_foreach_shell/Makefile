FILES = file1.txt file2.txt file3.txt

create_files:
	$(foreach file,$(FILES),touch $(file);)

show_files:
	@echo "Files in directory: $(shell ls *.txt)"
	@echo "Current date: $(shell date)"

clean:
	rm -f $(FILES)

.PHONY: create_files show_files clean