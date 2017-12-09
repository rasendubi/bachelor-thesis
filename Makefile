XELATEX_FLAGS := --shell-escape --synctex=1 --interaction=nonstopmode

.PHONY: all
all: main.pdf technical-task.pdf vidguk.pdf

main.pdf: main.tex intro.tex vp.tex abstract.tex task.tex appendix-b.tex explanatory-note-master.tex shell.nix Makefile myextreport.cls appendix-a.tex
	xelatex $(XELATEX_FLAGS) main.tex && xelatex $(XELATEX_FLAGS) main.tex

technical-task.pdf: main.tex technical-task.tex Makefile myextreport.cls technical-task-title.tex
	xelatex $(XELATEX_FLAGS) technical-task.tex && xelatex $(XELATEX_FLAGS) technical-task.tex

vidguk.pdf: main.tex vidguk.tex Makefile myextreport.cls
	xelatex $(XELATEX_FLAGS) vidguk.tex && xelatex $(XELATEX_FLAGS) vidguk.tex

.PHONY: clean
clean:
	rm -f *.aux *.log *.out *.pdf *.toc

.PHONY: watch
watch:
	while inotifywait -e close_write *.tex; do make; done
