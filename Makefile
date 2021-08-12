
#NAME=`git branch --show-current`
NAME_ != git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"
RUBY = ruby
RUM = $(RUBY) -Ilib -r make -e
#LOW = lowdown
HTP = wkhtmltopdf

all: html

html:
	rm -fR out/html/* out/html/.*
	touch out/html/.gitkeep
	cp lib/assets/*.ico out/html/
	cp lib/assets/*.png out/html/
	cp lib/assets/*.css out/html/
	$(RUM) make_html

name:
	echo $(NAME_)

serve:
	$(RUBY) -run -ehttpd out/html/ -p7003
s: serve


.PHONY: name serve

