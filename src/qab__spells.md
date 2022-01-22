
<!-- .margin.compass -->
* _Playing a Caster_
* Spellcasting
* **Spells**
* Spell forms
* Spell colours


<!-- .matrix -->
|           |   |             |   |        |   |                |
|-----------|---|-------------|---|--------|---|----------------|
| Amber     | 1 | heat        | × | Arrow  | 1 | missile        |
| Blue      | 1 | cold        |   | Ball   | 1 | sphere         |
| Coal      | 1 | damage      |   | Crown  | 1 | donut          |
| Copper    | 1 | earth       |   | Disk   | 1 | round platform |
| Gold      | 1 | light       |   | Finger | 1 | point          |
| Night     | 1 | darkness    |   | Flail  | 1 | there and back |
| Quartz    | 1 | meta        |   | Hand   | 1 | touch          |
| Red       | 1 | fire        |   | Hut    | 1 | shelter        |
| Scarlet   | 1 | drain       |   | Net    | 1 | web            |
| Silver    | 1 | fence       |   | Pole   | 1 | ten feet       |
| Turquoise | 1 | healing     |   | Powder | 1 | cloud          |
|           | 1 |             |   | Shield | 1 | vertical disk  |

# Spells

Casters see the magical energy as threads of various colours. It is probable that some casters see colours differently, and that some of them don't see some of the colours.

Most of the casters choose simple, well known, forms for weaving their magical threads. Maybe in Constantinople or further east, there are casters that know more complicated forms.


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
    tdes[1].textContent = '' + (1 + i);
    tdes[5].textContent = '' + (1 + i);
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

