
#NAME_ != git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"
NAME_ != grep "NAME_:" Config.yaml | cut -d ": " -f 2 | sed 's/^ *//'
RUBY = ruby
RUM = $(RUBY) -Ilib -r make -e


all: pdf

html:
	rm -fR out/html/* out/html/.*
	touch out/html/.gitkeep
	cp lib/assets/*.ico out/html/
	cp lib/assets/*.png out/html/
	cp lib/assets/*.css out/html/
	$(RUM) make_html

pdf: html
	$(RUM) make_pdf

name:
	@echo $(NAME_)

serve:
	$(RUBY) -run -ehttpd out/html/ -p7003
s: serve


.PHONY: name serve

