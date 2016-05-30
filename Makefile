init.pdf: init.tex shell.nix Makefile myextreport.cls
	xelatex init.tex && xelatex init.tex

.PHONY: clean
clean:
	rm -f init.aux init.log init.out init.pdf init.toc
