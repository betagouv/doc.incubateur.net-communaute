
# when the Makefile loads, store the list-rules command (without
# echoing it, -s) in a variable for later reuse.
RULES = $(shell make -s list-rules)

list-rules:
	git ls-files '**/*.md' | grep -v "README.md" | grep -v ".github"

echo-rules:
	echo "the rules are $(RULES)"

lint-md:
	npm run lint

lint-filenames:
	bundle exec ruby scripts/rename_file_based_on_header.rb $(RULES)

fix-filenames:
	bundle exec ruby scripts/rename_file_based_on_header.rb --fix $(RULES)
