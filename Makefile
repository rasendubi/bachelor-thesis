.PHONY: all
all: main.pdf technical-task.pdf vidguk.pdf

main.pdf: main.tex intro.tex vp.tex abstract.tex task.tex appendix-b.tex explanatory-note.tex shell.nix Makefile myextreport.cls appendix-a.tex
	xelatex --synctex=1 main.tex && xelatex --synctex=1 main.tex

technical-task.pdf: main.tex technical-task.tex Makefile myextreport.cls
	xelatex --synctex=1 technical-task.tex && xelatex --synctex=1 technical-task.tex

vidguk.pdf: main.tex vidguk.tex Makefile myextreport.cls
	xelatex --synctex=1 vidguk.tex && xelatex --synctex=1 vidguk.tex

.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.pdf *.toc
