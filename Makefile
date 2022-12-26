pandoc=docker run --rm -u `id -u`:`id -g` -v `pwd`:/pandoc dalibo/pandocker:stable

build:
	mkdir -p dist
	$(pandoc) --mathjax -t revealjs -s --standalone --section-divs -s -o dist/index.html src/index.md

server:
	python -m http.server --directory ./dist
