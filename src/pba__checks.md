
<!-- .margin.compass -->
* _Playing the Game_
* **Checks**
* Combat
* Cbt Actions
* Taking Hits
* Travel
* Exploration
* Advancement
* Encumbrance


# Checks

TODO

<!--
<div class="save-circle explanation"><span class="d">TC</span><div class="dia"></div><span class="d">DC</span></div>
-->


<!-- PAGE BREAK checks -->


<!-- .margin.compass -->
* _Playing the Game_
* **Checks**
* Combat
* Cbt Actions
* Taking Hits
* Travel
* Exploration
* Encumbrance
* Advancement


## check examples

Remember, `TC`s are target classes, the lower the better, they are used when rolling against oneself. And `DC`s are opponent classes, the higher the better, as they are "presented" to the opponent.

Sneaking
: 1d20 + _Scout_ ≥ `EVA TC` ~~or~~
: 1d20 + _Scout_ ≥ opponent's 1d20 + _Spy_ ~~or~~
: 1d20 + _Scout_ ≥ opponent's `Learning DC` ~~or~~
: 1d20 + _Scout_ ≥ opponent's `EVA DC` ~~or~~
: 1d20 + _Scout_ ≥ opponent's `WIS DC` ~~or~~
: 1d20 + _Scout_ ≥ arbitrary `DC`

Obtaining a discount
: 1d20 + _Trade_ ≥ `INT TC` ~~or~~
: 1d20 + _Trade_ ≥ `WIS TC` ~~or~~
: 1d20 + _Trade_ ≥ opponent's 1d20 + _Trade_ ~~or~~
: 1d20 + _Trade_ ≥ opponent's `Mental DC`

Shooting at the range
: 1d20 + _Bows_ ≥ `DEX TC` ~~or~~
: 1d20 + _Bows_ ≥ 15 (arbitrary `DC`)

Healing a character
: 1d20 + _Heal_ ≥ `INT TC` ~~or~~
: 1d20 + _Heal_ ≥ wounded's `CON TC`


## in summary [^1]

[^1]:
  DC is _Diamond Class_, while TC is, well, _The Circle_ on the character sheet

Against own's TC
: 1d20 + _skill_ ≥ Ability `TC` ~~or~~
: 1d20 + _skill_ ≥ Save `TC`

Against friend's TC
: 1d20 + _skill_ ≥ friend's Ability `TC` ~~or~~
: 1d20 + _skill_ ≥ friend's Save `TC`

Opposed check
: 1d20 + _skill_ ≥ opponent's 1d20 + _skill_ ~~or~~
: 1d20 + _skill_ ≥ opponent's 1d20 + other _skill_ ~~or~~
: 1d20 + _skill_ ≥ opponent's Ability `DC`

Arbitrary DC
: 1d20 + _skill_ ≥ arbitrary `DC` (Difficulty Class)


## not checking

The referee might decide that the level of skill of a character is sufficient for the task to automatically succeed.

<script>
  onDocumentReady(function() {
    var tbe = elt('[data-aa-title="checks"] .text-block');
    tbe.appendChild(elt('#tcdc').content.cloneNode(true));
  });
</script>

<!-- RETURN -->

If there is time pressure, opposition, or the task is dangerous, the referee might demand a check to the player (or roll for a NPC).

<!-- .comparison -->
1d20 + _modifier_ ≥ `TC` or `DC`

The modifier is usually a skill, covering the task at hand. The target number might be a character Target Class (`TC`) or an opposing character `DC`.

For less passive opposed checks, the referee might request

<!-- .comparison -->
1d20 + _skill_ ≥ opponent's 1d20 + _skill_

where the left skill and the right skill might be the same or not.


## attack checks

An attack check follows the pattern above. The modifier is the weapon skill, while the `DC` is the opponent's Armor Class.

<!-- .comparison -->
1d20 + _weapon skill_ ≥ `AC`


## save checks

The referee might grant a save check to a character. The modifier might be a skill or simply half the level or the hit dice (`HD`) rounded down. The target class (`TC`) has to be selected among `Physical TC`, `Evasion TC`, `Mental TC`, or any other `TC` on the character sheet.

<!-- .comparison -->
1d20 + _character modifier_ ≥ character `TC`

The referee might turn a save check on its head and make it an attack check.

<!-- .comparison -->
1d20 + _attacker modifier_ ≥ character `DC`

TC transcend, DC defend.


## advantage and disadvantage

[^1]

[^1]:
  the referee might grant +2 or -2 instead of an advantage or disadvantage.

Depending on the circumstances, the referee might grant advantage or disadvantage on a check. Roll two d20s instead of one, and keep the highest in case of advantage, or the lowest in case of disadvantage.


## ones and twenties

The referee decides if something extra happens on a natural 1 or a natural 20. They might even rule that nothing special happens.

