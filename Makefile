submodule:
	git submodule update --init --recursive

build:
	pandoc -t revealjs -s -o index.html index.md -V revealjs-url=https://unpkg.com/reveal.js@3.9.2/

server:
	python3.7 -m http.server