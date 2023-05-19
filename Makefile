.PHONY: all

all: fieldlining.pdf

fieldlining.ps: fieldlining.txt
	vim fieldlining.txt -c "hardcopy > fieldlining.ps | q"

fieldlining.pdf: fieldlining.ps
	ps2pdf fieldlining.ps

clean:
	rm *.ps
	rm *.pdf