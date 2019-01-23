.PHONY: all clean

PDFLATEX ?= pdflatex -shell-escape


SLIDES_PDF = slides.pdf
SLIDES_TEX = slides.tex
SLIDES_DEPS = $(SLIDES_TEX)
SLIDES_DEPS += Makefile plan.tex


all: $(SLIDES_PDF)

$(SLIDES_PDF): $(SLIDES_DEPS)
	$(PDFLATEX) $(SLIDES_TEX)
	$(PDFLATEX) $(SLIDES_TEX)

clean:
	rm -f *.aux *.snm *.toc *.nav *.log *.out *.pdf
