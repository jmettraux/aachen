
#NAME=`git branch --show-current`
NAME_=`git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"`

name:
	echo ${NAME_}

mds:
	rm -f out/tmp/*.md
	cp src/*.md out/tmp/
	ls out/tmp/*.md | sort | xargs cat > out/tmp/${NAME_}.md
	ruby -Ilib -r make -e "make_index" >> out/tmp/index.md

html: mds
	rm -f out/html/*.html
	cp lib/assets/*.ico out/html/
	cp lib/assets/*.png out/html/
	cp lib/assets/tufte.css out/html/
	cp -pR lib/assets/et-book out/html/
	cp lib/assets/aachen.js out/html/${NAME_}.js
	cp lib/assets/aachen.css out/html/${NAME_}.css
	ls out/tmp/*.md | xargs ruby -Ilib -r make -e "make_htmls"

enum:
	@ls src/*.md | sort | xargs grep "^#"

serve:
	ruby -run -ehttpd out/html/ -p7003
s: serve

