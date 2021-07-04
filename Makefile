
#NAME=`git branch --show-current`
NAME_ != git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"
BXR = bundle exec ruby
BXM = $(BXR) -Ilib -r make -e

all: html

html: mds
	rm -fR out/html/* out/html/.*
	touch out/html/.gitkeep
	cp lib/assets/*.ico out/html/
	cp lib/assets/*.png out/html/
	cp lib/assets/tufte.css out/html/
	#cp -pR lib/assets/et-book out/html/
	cp lib/assets/aachen.js out/html/$(NAME_).js
	cp lib/assets/aachen.css out/html/$(NAME_).css
	ls out/tmp/*.md | xargs $(BXM) make_htmls

mds:
	rm -f out/tmp/* out/tmp/.*
	touch out/tmp/.gitkeep
	cp src/*.md out/tmp/
	ls out/tmp/*.md | sort | xargs cat > out/tmp/$(NAME_).md
	$(BXM) make_index >> out/tmp/index.md

name:
	echo $(NAME_)
table:
	$(BXM) make_table

serve:
	$(BXR) -run -ehttpd out/html/ -p7003
s: serve


.PHONY: name table serve mds

