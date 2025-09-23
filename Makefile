
# when the Makefile loads, store the list-rules command (without
# echoing it, -s) in a variable for later reuse.
RULES = $(shell make -s list-rules)

# NOTE: the annoying `-z` + `tr` combination exists because the
# default `git ls-files` behaviour is to display accents weirdly and
# it chokes all of the other scripts. Two solutions:
#
# 1. changing the `core.quotePath` option[1] of Git but I don't like
# fiddling with other people's systems;

# 2. using `-z` to produce verbatim output, but NULL-separated hence
# the `tr` to restore newlines after.
#
# [1]: https://git-scm.com/docs/git-config#Documentation/git-config.txt-corequotePath
list-rules:
	git ls-files '**/*.md' -z | tr '\0' '\n' | grep -v "README.md" | grep -v ".github"

echo-rules:
	echo "the rules are $(RULES)"

fix-md:
	npm run lint -- -f

lint: lint-md lint-filenames lint-custom

lint-md:
	npm run lint

lint-custom:
	bundle exec ruby scripts/check_files.rb $(RULES)

lint-filenames:
	bundle exec ruby scripts/rename_file_based_on_header.rb $(RULES)

fix-filenames:
	bundle exec ruby scripts/rename_file_based_on_header.rb --fix $(RULES)

export:
	bundle exec ruby scripts/convert_markdown_to_yml.rb
