all: clean esse.pdf

clean:
	rm -f *.dvi *.ps *.pdf *.aux *.toc *.log *.blg *.bbl *.out

esse.dvi: esse.tex
	latex esse
	latex esse
	bibtex esse
	latex esse
	latex esse

esse.ps: esse.dvi
	dvips esse.dvi

esse.pdf: esse.ps
	ps2pdf esse.ps

.PHONY: clean
