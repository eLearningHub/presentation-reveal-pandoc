pandoc=docker run --rm -u `id -u`:`id -g` -v `pwd`:/pandoc dalibo/pandocker:stable

build:
	$(pandoc) --mathjax -t revealjs -s --standalone --section-divs -s -V theme=night -o slides/index.html src/index.md

serve:
	python -m http.server --directory ./slides
