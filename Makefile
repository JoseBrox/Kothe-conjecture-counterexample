TEX := paper.tex
PDF := paper.pdf

.PHONY: all clean

all: $(PDF)

$(PDF): $(TEX)
	latexmk -pdf -file-line-error -halt-on-error -interaction=nonstopmode $(TEX)

clean:
	latexmk -C $(TEX)
