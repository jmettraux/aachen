
<!-- .margin.compass -->
* _Playing a Caster_
* Spellcasting
* **Spells**
* Spell forms
* Spell colours


<!-- .matrix -->
|           |    |          |   |        |    |          |
|-----------|----|----------|---|--------|----|----------|
| Amber     |  1 | heat     | × | Arrow  |  1 | missile  |
| Blue      |  2 | cold     |   | Ball   |  2 | sphere   |
| Coal      |  3 | damage   |   | Crown  |  3 | donut    |
| Copper    |  4 | earth    |   | Disk   |  4 | platform |
| Gold      |  5 | light    |   | Finger |  5 | point    |
| Night     |  6 | darkness |   | Flail  |  6 | whip     |
| Quartz    |  7 | meta     |   | Hand   |  7 | touch    |
| Red       |  8 | fire     |   | Hut    |  8 | shelter  |
| Scarlet   |  9 | drain    |   | Net    |  9 | web      |
| Silver    | 10 | fence    |   | Pole   | 10 | ten feet |
| Turquoise | 11 | healing  |   | Powder | 11 | cloud    |
| Faery     | 12 | beyond   |   | Shield | 12 | lens     |

# Spells

Casters see the magical energy as threads of various colours. It is probable that some casters see colours differently, and that some of them don't see some of the colours.

Most of the casters choose simple, well known, forms for weaving their magical threads. Maybe in Constantinople or further east, there are casters that know more complicated forms.

A ~~spell~~ is a combination ~~form~~ × ~~colour~~, like for example _Red Arrow_, or _Turquoise Shield_.

<script>

onDocumentReady(function() {
  var te = elt('section[data-aa-title="spells"] table.matrix');
  elt(te, 'thead').remove();
  elts(te, 'tr').forEach(function(tre, i) {
    var tdes = elts(tre, 'td');
    tdes[0].classList.add('name');
    tdes[4].classList.add('name');
    tdes[2].classList.add('description');
    tdes[6].classList.add('description');
    tdes[1].classList.add('number');
    tdes[5].classList.add('number');
    if (i == 0) { tdes[3].setAttribute('rowspan', '12'); }
    else { tdes[3].remove(); }
  });
});

</script>


<!-- RETURN -->

## Investment

* casting a ~~Blue Finger~~ costs 1 CP
* casting a ~~Night Ball~~ costs 1 CP (Ø 1ft, within 30ft, for 1 rnd)
* casting a ~~Night Ball~~ with a Ø of 2ft that lasts 2 rounds costs 1 + 1 (extra Ø ft) + 1 (extra round)
* ...

If a thread artefact is within control range, it may be moved or prolonged, provided extra CPs are consumed.

## Élan

Many of the spell descriptions below mention _élan_. It is equal to the `Cast` skill level plus the attribute modifier used for casting the spell. So it varies from -2 to +6.

