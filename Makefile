all:
	latexmk -xelatex -interaction=nonstopmode main.tex

clean:
	latexmk -C
