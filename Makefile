init.pdf: main.tex explanatory-note.tex shell.nix Makefile myextreport.cls
	xelatex --synctex=1 main.tex && xelatex --synctex=1 main.tex

.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.pdf *.toc
