
#NAME_ != git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"
NAME_ != grep "NAME_:" Config.yaml | cut -d ": " -f 2 | sed 's/^ *//'

RUBY = ruby
RUM = $(RUBY) -Ilib -r make -e


all: ps

html0: clean
	touch out/tmp/.gitkeep
	touch out/html/.gitkeep
	cp lib/assets/blank*.pdf out/tmp/
	cp lib/assets/*.ico out/html/
	cp lib/assets/*.png out/html/
	cp lib/assets/*.css out/html/
	cp lib/assets/*.svg out/html/
	$(RUBY) src/_character_sheet.rb \
      > out/html/character_sheet.html
	AACHEN_CHAR_YAML=src/_char.yaml $(RUBY) src/_character_sheet.rb \
      > out/html/character_sheet_0.html
h0: html0
html: html0
	$(RUM) make_html
h: html

pdf: html
	$(RUM) make_pdf
	pdfinfo out/html/aachen.pdf
ps: pdf
	$(RUM) make_ps
	pdfinfo out/html/aachen.a5.pdf

jpegs: html0
	chrome --headless --no-sandbox --disable-gpu \
      --window-size=1140x840 \
      --screenshot=out/html/csheet.jpg out/html/character_sheet.html
	convert out/html/csheet.jpg \
      -trim out/html/csheet_trimmed.jpg
	convert out/html/csheet_trimmed.jpg \
      -crop 550x840+0+0 -trim out/html/csheet_left.jpg
	convert out/html/csheet_trimmed.jpg \
      -crop 550x840+550+0 -trim out/html/csheet_right.jpg
	convert out/html/csheet_trimmed.jpg \
      -crop 550x410+0+0 -trim out/html/csheet_abilities.jpg

tod: ps
	cp out/html/character_sheet.pdf ~/Downloads/
	cp out/html/character_sheet_0.pdf ~/Downloads/
	cp out/html/aachen.pdf ~/Downloads/
	cp out/html/aachen.a5.pdf ~/Downloads/
	cp out/html/aachen.stapled.pdf ~/Downloads/
	cp out/html/aachen.stapled.2.duplex.ps.zip ~/Downloads/

blank:
	echo "" | ps2pdf -sPAPERSIZE=a4 - out/tmp/blank_a4.pdf
	echo "" | ps2pdf -sPAPERSIZE=letter - out/tmp/blank_letter.pdf

name:
	@echo $(NAME_)

serve:
	$(RUBY) -run -ehttpd out/html/ -p7003
s: serve

clean:
	rm -f out/tmp/*.md
	rm -f out/tmp/*.pdf
	rm -f out/tmp/*.html
	rm -f out/html/*.ps
	rm -f out/html/*.ps.zip
	rm -f out/html/*.pdf
	rm -f out/html/*.css
	rm -f out/html/*.ico
	rm -f out/html/*.png
	rm -f out/html/*.svg
	rm -f out/html/*.html
	rm -fR out/html/* out/html/.*


.PHONY: name serve clean

