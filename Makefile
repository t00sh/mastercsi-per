.PHONY: all clean distclean report slides fuzz help

REPORT_PATH = report/
SLIDES_PATH = slides/
FUZZ_PATH = fuzz/

all: help

########################################
# Rule to build report
########################################
report:
	cd $(REPORT_PATH) && make

########################################
# Rule to build slides
########################################
slides:
	cd $(SLIDES_PATH) && make

########################################
# Rule to setup fuzzing
########################################
fuzz:
	cd $(FUZZ_PATH) && make

########################################
# Rule to clean everything
########################################
clean:
	cd $(REPORT_PATH) && make clean
	cd $(SLIDES_PATH) && make clean
	cd $(FUZZ_PATH) && make clean
	find . -name "*~" -delete

########################################
# Rule to distclean everything
########################################
distclean:
	cd $(REPORT_PATH) && make distclean
	cd $(SLIDES_PATH) && make distclean
	cd $(FUZZ_PATH) && make distclean
	find . -name "*~" -delete

########################################
# Help message
########################################
help:
	@echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	@echo "~ HELP"
	@echo "~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	@echo ""
	@echo "make report    -> Build report"
	@echo "make slides    -> Build slides"
	@echo "make fuzz      -> Setup fuzzing environment"
	@echo "make clean     -> Clean temporary files"
	@echo "make distclean -> Clean everything"
	@echo "make help      -> Display this help message"
