
#NAME_ != git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"
NAME_ != grep "NAME_:" Config.yaml | cut -d ": " -f 2 | sed 's/^ *//'

RUBY = ruby
RUM = $(RUBY) -Ilib -r make -e


all: ps

html0:
	rm -fR out/tmp/*.md
	rm -fR out/tmp/*.html
	rm -fR out/html/* out/html/.*
	touch out/html/.gitkeep
	cp lib/assets/*.ico out/html/
	cp lib/assets/*.png out/html/
	cp lib/assets/*.css out/html/
	cp lib/assets/*.svg out/html/
	$(RUBY) src/sheet.rb > out/html/sheet.html
h0: html0
html: html0
	$(RUM) make_html
h: html

pdf: html
	$(RUM) make_pdf
ps: pdf
	$(RUM) make_ps

blank:
	echo "" | ps2pdf -sPAPERSIZE=a4 - out/tmp/blank_a4.pdf
	echo "" | ps2pdf -sPAPERSIZE=letter - out/tmp/blank_letter.pdf

name:
	@echo $(NAME_)

serve:
	$(RUBY) -run -ehttpd out/html/ -p7003
s: serve


.PHONY: name serve

