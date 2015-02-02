.SUFFIXES: .tex .dvi .pdf
TEX = platex
TEXFLAGS = #-interaction=batchmode
TARGET = YeYang_Abstract

.tex.dvi:
		$(TEX) $(TEXFLAGS) $<
.dvi.pdf:
		dvipdfmx $<

all: $(TARGET).pdf

$(TARGET).pdf: $(TARGET).dvi
$(TARGET).dvi: $(TARGET).tex

clean:
		$(RM) *.blg *.run.xml *.bbl *.bcf *.dvi *.aux *.log *.pdf *.lot *.lof *.out *.toc
