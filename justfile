default:
	just --list

pre: fix-typo gen

gen:
	./gen.sh
	just fmt

dev:
	open -a 'Google Chrome' ./docs/index.html

typo:
	typos

fix-typo:
	typos --write-changes

publish name dir='posts':
	mv ./drafts/{{name}}.md ./{{dir}}
	./gen.sh
	@echo Done!

fmt:
	prettier --write .

dev-deps:
	brew install just prettier
	cargo install typos-cli
	curl https://raw.githubusercontent.com/jirutka/esh/master/esh > /usr/local/bin/esh
