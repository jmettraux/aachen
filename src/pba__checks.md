
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

Skill check
: 1d20 + character _skill_ ≥ character `TC`; or
: 1d20 + character _skill_ ≥ opponent `DC`; or
: 1d20 + character _skill_ ≥ arbitrary `DC`;
: success → task succeeds.

Skill, `DC`, `TC`
: are decided by the referee;
: player may suggest alternatives.

Opposed check
: referee might decide the task is actively opposed;
: 1d20 + character _skill_ ≥ 1d20 + opponent _skill_;
: success → task succeeds.
: (yes, this favours the _initiating_ side)

No check unless
: the task is difficult and/or hazardous; or
: the task is performed under time pressure; or
: the referee decides so.

<hr/>

Attack check
: 1d20 + _weapon skill_ ≥ defender `AC`;
: success → defender takes damage.

<hr/>

Save check
: the referee might grant a _save_ against an impending danger;
: 1d20 + _modifier_ ≥ character `TC`;
: success → the danger is avoided completely or partially.

Modifier and `TC`
: are decided by the referee;
: player may suggest alternatives.

<hr/>

Dis|advantage
: referee might grant advantage or disadvantage to a check;
: roll 2 d20s instead of 1;
: keep the highest in case of advantage;
: keep the lowest when disadvantage.

1 and 20
: 1 → always a failure;
: 20 → always a success;
: referee is free to add _critical_ outcomes.


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

<!--
Remember, `TC`s are target classes, the lower the better, they are used when rolling against oneself. And `DC`s are opponent classes, the higher the better, as they are "presented" to the opponent.
-->

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


## in summary

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

<!--
## not checking

The referee might decide that the level of skill of a character is sufficient for the task to automatically succeed.
-->

<script>
  onDocumentReady(function() {
    var tbe = elt('[data-aa-title="checks"] .text-block');
    //tbe.appendChild(elt('#tcdc').content.cloneNode(true));
    tbe.insertBefore(elt('#tcdc').content.cloneNode(true), tbe.children[0]);
  });
</script>

