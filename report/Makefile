.PHONY: all clean distclean

PDFLATEX ?= pdflatex -shell-escape


REPORT_PDF = report.pdf
REPORT_TEX = report.tex
REPORT_DEPS = $(REPORT_TEX) config.tex
REPORT_DEPS += introduction.tex Makefile
REPORT_DEPS += chapter1.tex


all: $(REPORT_PDF)

$(REPORT_PDF): $(REPORT_DEPS)
	$(PDFLATEX) $(REPORT_TEX)
	$(PDFLATEX) $(REPORT_TEX)
	$(PDFLATEX) $(REPORT_TEX)

distclean: clean

clean:
	rm -f *.aux *.log *.out *.toc *.pdf
