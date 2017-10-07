BUILD = build
BOOKNAME = my-book
TITLE = title.txt
METADATA = metadata.xml
#CHAPTERS = 0.md 1.md 2.md 3.md 4.md 5.md 6.md 8.md 7.md 9.md 10.md 11.md 12.md 13.md 14.md 15.md 16.md 17.md 18.md 19.md 20.md 21.md 22.md 23.md 24.md 25.md 26.md 27.md 28.md 29.md 30.md 31.md 32.md 33.md 34.md 35.md 36.md 37.md 38.md 39.md

CHAPTERS=1.md

TOC = --toc --toc-depth=3
COVER_IMAGE = images/cover.jpg
LATEX_CLASS = book
#MAINFONT = "AR PL UMing CN"
#MAINFONT = "宋体"
MAINFONT = "SimSun"

REFLIST=reference.md

all: book

book: epub html pdf

clean:
	rm -r $(BUILD)

epub: $(BUILD)/epub/$(BOOKNAME).epub

html: $(BUILD)/html/$(BOOKNAME).html

pdf: $(BUILD)/pdf/$(BOOKNAME).pdf

$(BUILD)/epub/$(BOOKNAME).epub: $(TITLE) $(CHAPTERS) $(REFLIST)
	mkdir -p $(BUILD)/epub
	#pandoc $(TOC) -S --epub-metadata=$(METADATA) --epub-cover-image=$(COVER_IMAGE) -o $@ $^

$(BUILD)/html/$(BOOKNAME).html: $(CHAPTERS)
	mkdir -p $(BUILD)/html
	pandoc $(TOC) --standalone --to=html5 -o $@ $^

$(BUILD)/pdf/$(BOOKNAME).pdf: $(TITLE) $(CHAPTERS) $(REFLIST)
	mkdir -p $(BUILD)/pdf
	#pandoc $(TOC) --latex-engine=xelatex --template eisvogel.tex -o $@ $^
	pandoc -N -s --toc --smart --latex-engine=xelatex -V CJKmainfont=$(MAINFONT) -V mainfont=$(MAINFONT) -V geometry:margin=1in -o $@ $^

.PHONY: all book clean epub html pdf




