#!/bin/sh

pdflatex --shell-escape main.tex literature.bib
biber main
pdflatex --shell-escape main.tex literature.bib
pdflatex --shell-escape main.tex literature.bib
exit 0
