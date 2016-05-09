init.pdf: init.tex shell.nix Makefile
	# nix-shell --run 'pdflatex init.tex && makeindex init.nlo -s nomencl.ist -o init.nls && pdflatex init.tex'
	nix-shell --run 'pdflatex init.tex && pdflatex init.tex'
