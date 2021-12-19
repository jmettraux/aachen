
<!-- .margin.compass -->
* _Character Creation_
* Abis & Saves
* Background
* Class
* **Traits**
* Hit Points
* Name
* Equipment


# Select Traits

A trait is a qualifier, for example a character might be `Lucky`. A trait may be selected a second time, simply prefix the character with _very_, our character becomes `Very Lucky`, select it a third time and it becomes `Highly Lucky`.

~~TODO~~

<!-- <div.trait> -->

### Able `WIS TC` **11 ← d4d6**
* Simply increase an ability by one (recompute its TC)

<!-- </div> -->

<!-- <div.trait> -->

### Artful **11**
* TODO
* TODO
* TODO

<!-- </div> -->

<!-- <div.trait> -->

### Brutal `STR TC` **11**
* +1 melee damage
* +1d4 melee damage
* +1d8 melee damage

<!-- </div> -->

<!-- <div.trait> -->

### Deceitful `WIS TC` **11**
* Once per scene, as an instant action, a missed _Sneak_ or _Convince_ check can be turned into a success
* As per · and the character has a +1 on _Sneak_ and _Convince_ checks aimed at deception
* As per · and the character has advantage on _Sneak_ and _Convince_ checks aimed at deception

<!-- </div> -->

<!-- <div.trait> -->

### Evasive `EVA TC` **11**
* +1 on _Evasion_ saves
* +1 or +_Dodge_ on _Evasion_ saves
* Advantage on _Evasion_ saves

<!-- </div> -->

<!-- <div.trait> -->

### Elusive `EVA TC` **11**
* May disengage as an _On Turn Action_<br/>if 1d20 + _Dodge_ ≥ `Evasion TC`
* May disengage as an _On Turn Action_<br/>if (best of 2 d20) + _Dodge_ ≥ `Evasion TC`
* As per ·· and +1 to AC

<!-- </div> -->

<!-- <div.trait> -->

### Fast `DEX TC` **11**
* Initiative ← `best of 2 d20 + INI`
* Initiative ← `1d20 + INI + INT/2`
* Initiative ← `best of 2 d20 + INI + INT/2`

<!-- </div> -->

<!-- <div.trait> -->

### Firm `PHY TC` **11**
* +1 on _Physical_ saves
* +1 or +_Exert_ on _Physical_ saves
* Advantage on _Physical_ saves

<!-- </div> -->

<!-- <div.trait> -->

### ~~Intricate~~ `LEA TC` **11**
* TODO
* TODO
* TODO

<!-- </div> -->

<!-- <div.trait> -->

### Lucky `MEN TC` **11**
* TODO
* TODO
* TODO

<!-- </div> -->

<!-- <div.trait> -->

### Safe `DEX TC` **11**
* Recompute a save TC: instead of the mean, select the best of the two Abi TCs
* As per · for another save TC
* As per · for the remaining save TC

<!-- </div> -->

<!-- <div.trait> -->

### Scheming `LEA TC` **11**
* Each combat turn,  may exchange their initiative rank with someone in the party
* Each combat turn,  may reshuffle the initiative ranks of the party
* TODO

<!-- </div> -->

<!-- <div.trait> -->

### Sharp `DEX TC` **11**
* +1 on ranged attacks
* +2 on ranged attacks
* Advantage on ranged attacks

<!-- </div> -->

<!-- <div.trait> -->

### Skilled `LEA TC` **11**
* Simply increase a skill (start at +0)

<!-- </div> -->

<!-- <div.trait> -->

### Skillful `EVA TC` **11**
* Once per scene, as an instant action, a missed non-combat skill check can be turned into a success
* As per · and the character has a +1 on checks for known skills (level 0 or better)
* TODO

<!-- </div> -->

<!-- <div.trait> -->

### Snappy `MEN TC` **11**
* -3 instead of -4 on snap attacks
* -2 instead of -4 on snap attacks
* -1 instead of -4 on snap attacks

<!-- </div> -->

<!-- <div.trait> -->

### Studious `INT TC` **11**
* +1 on the `Learning TC`
* As per · but +3
* As per · but advantage

<!-- </div> -->

<!-- <div.trait> -->

### Swerving `PHY TC` **11**
* Once per scene, as an instant action, a successful attack against the character can be negated
* As per · or a missed attack by the character can be made to succeed
* As per ··, twice per scene

<!-- </div> -->

<!-- <div.trait> -->

### Talented `CHA TC` **11**
* +1 when rolling against Ability TC to acquire a trait level
* As per ·, but +3
* As per ··, but advantage

<!-- </div> -->


<!-- PAGE BREAK traits -->


<!-- .margin.compass -->
* _Character Creation_
* Abis & Saves
* Background
* Class
* **Traits**
* Hit Points
* Name
* Equipment


<!-- <div.trait> -->

### Thorny `EVA TC` **11**
* Still inflicts 1 damage on a failed melee attack
* As per ·, but 1 damage per weapon skill (at least 1)
* As per ··, but 2 damage per weapon skill (at least 1)

<!-- </div> -->

<!-- <div.trait> -->

### Vigorous `STR TC` **11**
* +1 HP per level, retroactive
* +2 HP per level, retroactive
* +3 HP per level, retroactive

<!-- </div> -->

<!-- <div.trait> -->

### Watchful `WIS TC` **11**
* +1 to _Notice_ checks
* +2 to _Notice_ checks
* Advantage on _Notice_ checks

<!-- </div> -->

<!-- <div.trait> -->

### Wise `MEN TC` **11**
* +1 on _Mental_ saves
* +1 or +_Know_ on _Mental_ saves
* Advantage on _Mental_ saves

<!-- </div> -->

<script>

onDocumentReady(function() {
  var ab = [ 1, 2 ]; var max = [ 4, 6 ]
  var es = document
    .querySelectorAll('section[data-aa-title="traits"] h3 strong')
  es.forEach(function(e, i) {
    e.title = `${i + 1} / ${es.length} -> ${max[0] * max[1]}`;
    e.textContent = `${ab[0]}${ab[1]}`;
    if (i === 0) {
      e.textContent = `${e.textContent} ← d${max[0]}d${max[1]}`;
    }
    ab[1] = ab[1] + 1; if (ab[1] > max[1]) { ab[0] = ab[0] + 1; ab[1] = 1; }
  });
});

</script>

