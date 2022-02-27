
<!-- .margin.compass -->
* _Playing a Caster_
* Spellcasting
* **Spells**
* Spell colours
* Spell forms


<!-- <div.tables> -->

<!-- .head -->
Skill

<!-- .skills -->
|       |   |        |
|-------|---|--------|
| Feel  | 1 | sense  |
| Pinch | 2 | seize  |
| Soak  | 3 | imbibe |
| Spin  | 4 | refine |
| Spoil | 5 | waste  |
| Tie   | 6 | join   |
| Weave | 7 | knit   |
| Undo  | 8 | unknit |

<!-- .mul -->
×

<!-- .head -->
Colour

<!-- .colours -->
|           |    |          |
|-----------|----|----------|
| Amber     |  1 | heat     |
| Blue      |  2 | cold     |
| Coal      |  3 | damage   |
| Copper    |  4 | earth    |
| Gold      |  5 | light    |
| Night     |  6 | darkness |
| Quartz    |  7 | meta     |
| Red       |  8 | fire     |
| Scarlet   |  9 | drain    |
| Silver    | 10 | fence    |
| Turquoise | 11 | healing  |
| Faery     | 12 | beyond   |

<!-- .mul -->
×

<!-- .head -->
Form

<!-- .forms -->
|        |    |          |
|--------|----|----------|
| Arrow  |  1 | missile  |
| Ball   |  2 | sphere   |
| Crown  |  3 | donut    |
| Disk   |  4 | platform |
| Finger |  5 | point    |
| Flail  |  6 | whip     |
| Hand   |  7 | touch    |
| Hut    |  8 | shelter  |
| Net    |  9 | web      |
| Pole   | 10 | ten feet |
| Powder | 11 | cloud    |
| Shield | 12 | lens     |

<!-- </div.tables> -->


# Spells

A spell is a combination ~~Skill~~ × ~~Colour~~ × ~~Form~~.

Skills in Aachen are verbs, magical ~~skills~~ are rather ambiguous verbs

Casters see the magical energy as threads of various ~~colours~~. It is probable that some casters see colours differently, and that some of them don't see some of the colours.

Most of the casters choose simple, well known, ~~forms~~ for weaving their magical threads. Maybe in Constantinople or further east, there are casters that know more complex forms.

A spell is also a negotiation between the referee and the player to determine how the fictional world is affected by the magic wielded by the character. There are no spell descriptions, the referee is free to interpret the guidelines provided here.


## Examples

<!-- Feel Pinch Soak Spin Spoil Tie Weave Undo -->

<!-- .examples -->

_Weave_ ~~×~~ _Coal_ ~~×~~ _Arrow_
: TODO

_Spin_ ~~×~~ _Coal_ ~~×~~ _Arrow_
: an arrow of pain flying through the air to hit its target

_Feel_ ~~×~~ _Quartz_ ~~×~~ _Pole_
: a pole of meta threads the caster may be used to probe for others' threads

_Pinch_ ~~×~~ _Red_ ~~×~~ _Ball_
: take control of the red threads found inside of a sphere

_Soak_ ~~×~~ _Copper_ ~~×~~ _Finger_
: the caster attempts to soak magical energy from the soil through their finger

_Undo_ ~~×~~ _Copper_ ~~×~~ _Hand_
: TODO

_Entwine_ ~~×~~ _Gold_ ~~×~~ _Powder_
: add powder light emitting threads on top of other threads, outlining them

_Spoil_ ~~×~~ _Gold_ ~~×~~ _Powder_
: TODO


<script>

onDocumentReady(function() {
  elts('section[data-aa-title="spells"] .tables table').forEach(function(te) {
    elt(te, 'thead').remove();
  });
});

</script>

