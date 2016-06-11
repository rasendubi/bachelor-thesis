init.pdf: init.tex shell.nix Makefile myextreport.cls
	xelatex --synctex=1 init.tex && xelatex --synctex=1 init.tex

.PHONY: clean
clean:
	rm -f init.aux init.log init.out init.pdf init.toc
