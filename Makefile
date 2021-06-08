
base:
	rm -f tmp/*.md
	cp src/a00__character_creation_summary.md tmp/
	cp src/a01__determine_attributes.md tmp/
	cp src/a02__determine_saving_throws.md tmp/
	cp src/a03_aac__skills.md tmp/a03__skills.md
	cp src/a04_aac__pick_a_background.md tmp/a04__pick_a_background.md
	cp src/a05_aac__pick_a_class.md tmp/a05__pick_a_class.md
	cp src/a06_aac__choose_foci.md tmp/a06__choose_foci.md
	cp src/a07__pick_a_skill.md tmp/
	cp src/b00__checks.md tmp/
	cp src/c00__saving_throws.md tmp/
	cp src/d00__durations.md tmp/
	cp src/e00__reaction.md tmp/
	cp src/f00__combat.md tmp/
	cp src/g00__injury.md tmp/
	cp src/x00__wilderness_exploration.md tmp/
	cp src/x01__site_exploration.md tmp/
	cp src/y00__reference_sheet.md tmp/
	cp src/z00__advancement.md tmp/
document:
	ls tmp/*.md | sort | xargs cat > tmp/document.md
aac: base document
	cat src/f00_asx__combat.md src/f00_bwn__combat.md >> tmp/f00__combat.md
	cat src/g00_asx__injury.md >> tmp/g00__injury.md
	cat src/m00_aac__magic.md >> tmp/m00__magic.md
	cat src/m01_aac__spellcasting.md >> tmp/m01__spellcasting.md
	cat src/m02_aac__spells.md >> tmp/m02__spells.md
	cat src/_introduction.md > tmp/aac.md
	cat tmp/document.md >> tmp/aac.md
	rm tmp/document.md
	cat src/_introduction.md > tmp/index.md
	ruby -Ilib -r make -e "make_index" >> tmp/index.md

html:
	rm -f out/*.html
	ls tmp/*.md | xargs ruby -Ilib -r make -e "make_htmls"

aach: aac html

enum:
	grep -R "^#" src/*.md

serve:
	ruby -run -ehttpd out/ -p7003
s: serve

