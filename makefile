FILE = gramatica-c
LAMB = without-lambda

.PHONY: $(FILE).pdf
.PHONY: $(LAMB).pdf

$(FILE).pdf: $(FILE).tex
	pdflatex $(FILE).tex

run:
	pdflatex $(FILE).tex
	open $(FILE).pdf

lambda:
	pdflatex $(LAMB).tex

lrun:
	open $(LAMB).pdf

bib:
	$(MAKE)
	bibtex $(FILE)
	$(MAKE)
	$(MAKE)

clean:
	$(RM) $(FILE).pdf


