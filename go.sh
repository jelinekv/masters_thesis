#!/bin/sh

pdflatex --shell-escape main.tex 
biber main
pdflatex --shell-escape main.tex 
pdflatex --shell-escape main.tex 
exit 0
