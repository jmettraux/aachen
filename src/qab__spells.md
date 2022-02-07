
<!-- .margin.compass -->
* _Playing a Caster_
* Spellcasting
* **Spells**
* Spell colours
* Spell forms


<!-- .matrix -->
|         |   |           |    |          |   |        |    |          |
|---------|---|-----------|----|----------|---|--------|----|----------|
|         | × | Amber     |  1 | heat     | × | Arrow  |  1 | missile  |
|         |   | Blue      |  2 | cold     |   | Ball   |  2 | sphere   |
|         |   | Coal      |  3 | damage   |   | Crown  |  3 | donut    |
|         |   | Copper    |  4 | earth    |   | Disk   |  4 | platform |
|         |   | Gold      |  5 | light    |   | Finger |  5 | point    |
|         |   | Night     |  6 | darkness |   | Flail  |  6 | whip     |
| Weave   |   | Quartz    |  7 | meta     |   | Hand   |  7 | touch    |
| Feel    |   | Red       |  8 | fire     |   | Hut    |  8 | shelter  |
| Seize   |   | Scarlet   |  9 | drain    |   | Net    |  9 | web      |
| Soak    |   | Silver    | 10 | fence    |   | Pole   | 10 | ten feet |
| Mutate  |   | Turquoise | 11 | healing  |   | Powder | 11 | cloud    |
| Entwine |   | Faery     | 12 | beyond   |   | Shield | 12 | lens     |

# Spells

Skill × Colour × Form

<!-- clear -->

Casters see the magical energy as threads of various colours. It is probable that some casters see colours differently, and that some of them don't see some of the colours.

Most of the casters choose simple, well known, forms for weaving their magical threads. Maybe in Constantinople or further east, there are casters that know more complex forms.

A ~~Spell~~ is a combination ~~Skill~~ × ~~Form~~ × ~~Colour~~. Most of the time, the skill is _Weave_.

FIXME The caster player negotiates with the referee the effect of the spell and then invests CPs and attempts to cast the spell. Most of the time, the magical skill involved will be _Weave_, but feel free to use the other skills, _Feel_, _Seize_, _Soak_, and _Mutate_.



<script>

onDocumentReady(function() {
  var te = elt('section[data-aa-title="spells"] table.matrix');
  elt(te, 'thead').remove();
  elts(te, 'tr').forEach(function(tre, i) {
    var tdes = elts(tre, 'td');
    tdes[0].classList.add('name');
    tdes[2].classList.add('name');
    tdes[6].classList.add('name');
    tdes[4].classList.add('description');
    tdes[8].classList.add('description');
    tdes[3].classList.add('number');
    tdes[7].classList.add('number');
    if (i == 0) {
      tdes[1].setAttribute('rowspan', '12');
      tdes[5].setAttribute('rowspan', '12');
    }
    else {
      tdes[1].remove();
      tdes[5].remove();
    }
  });
});

</script>

