.PHONY: all
all: main.pdf technical-task.pdf

main.pdf: main.tex intro.tex vp.tex task.tex appendix-b.tex explanatory-note.tex shell.nix Makefile myextreport.cls
	xelatex --synctex=1 main.tex && xelatex --synctex=1 main.tex

technical-task.pdf: main.tex technical-task.tex Makefile myextreport.cls
	xelatex --synctex=1 technical-task.tex && xelatex --synctex=1 technical-task.tex

.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.pdf *.toc
