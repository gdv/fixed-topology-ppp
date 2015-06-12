TARGETS = fixed-topology-ppp.pdf
LATEXMK = latexmk -recorder -use-make

pdf: $(TARGETS)

bibs=$(wildcard *.bib)
figs=$(wildcard *.png)
%.pdf : %.tex $(bibs) $(figs)
	$(LATEXMK) -pdf $<
