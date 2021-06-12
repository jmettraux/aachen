
NAME=`git branch --show-current`
NAME_=`git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"`

name:
	echo ${NAME}
	echo ${NAME_}

#clean:
#	rm -f out/html/*.html
#	rm -f out/pdf/*.pdf
mds:
	rm -f out/tmp/*.md
	cp src/*.md out/tmp/
	ls tmp/*.md | sort | xargs cat > tmp/${NAME_}.md
	ruby -Ilib -r make -e "make_index" >> out/tmp/index.md

html:
	ls out/tmp/*.md | xargs ruby -Ilib -r make -e "make_htmls"

#aach: aac html

enum:
	@ls src/*.md | sort | xargs grep "^#"

serve:
	ruby -run -ehttpd out/ -p7003
s: serve

