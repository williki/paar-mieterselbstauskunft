LAT=latexmk -e '$$lualatex=q/lualatex %O -synctex=1 -interaction=nonstopmode %S/' -pdflua -lualatex
PDFVIEWER=xdg-open
ZIP=zip Mieterauskunft-$(shell date +%F).zip

.PHONY: all zip clean duo jozi pares veiwatini

all: duo jozi pares veiwatini

duo:
	$(LAT) duo.tex

jozi:
	$(LAT) jozi.tex	

pares:
	$(LAT) pares.tex

veiwatini:
	$(LAT) veiwatini.tex

zip: all
	$(ZIP) *.pdf

open: all
	$(PDFVIEWER) *.pdf

clean:
	rm -f *.aux *.fdb_latexmk *.fls *.out *.log *.lot *.lof *.pdf *.gz *.zip

