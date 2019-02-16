.PHONY: all clean distclean

PDFLATEX ?= pdflatex -shell-escape


SLIDES_PDF = slides.pdf
SLIDES_TEX = slides.tex
SLIDES_DEPS = $(SLIDES_TEX)
SLIDES_DEPS += Makefile
SLIDES_DEPS += introduction.tex
SLIDES_DEPS += afl.tex
SLIDES_DEPS += fuzzing_radare2.tex
SLIDES_DEPS += binaires_quelconques_et_autres_plateformes.tex
SLIDES_DEPS += conclusion.tex

all: $(SLIDES_PDF)

$(SLIDES_PDF): $(SLIDES_DEPS)
	$(PDFLATEX) $(SLIDES_TEX)
	$(PDFLATEX) $(SLIDES_TEX)

distclean: clean

clean:
	rm -f *.aux *.snm *.toc *.nav *.log *.out *.pdf
