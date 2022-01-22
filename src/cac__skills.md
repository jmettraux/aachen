
<!-- .margin.compass -->
* _Character Creation_
* Abis & Saves
* **Background**
* Class
* Traits
* Hit Points
* Name
* Equipment


<!-- <div.two-columns> -->
<!-- <div.left-column> -->

# Skills

Skills are expressed from 0 to 10 or 20. That value is used as a d20 modifier against an Ability TC, a Save TC, an arbitrary DC, or an AC.

When a character acquires a skill, they start at +0. If a character has not been exposed to the skills, they have a default -2.

A character may have at most a `level + 1` skill score.

Skills are divided between Fighter skills **F**, Magic skills **M**, and General skills **G**.


## Fighter Skills

Bows / Crossbows / Slings / Javelins / Throw
: Shoot with a given type of ranged weapon (or throw a rock).

Axes / Maces / Staffs / Spears / Swords / Knives
: Fight with a given type of melee weapon.

Punch / Grapple
: Fight unarmed. Punching and grappling are separate.

Shield
: To use a shield, defensively and offensively.

Dodge
: To avoid hits and projectiles.


## Magic Skill

Weave
: To cast spells.

Feel
: To feel spell effects.

Seize
: To take over others' magical threads.

Soak
: To absorb magical energy as CP (Casting Points).

Mutate
: To alter woven magical threads

<!-- </div.left-column> -->
<!-- <div.right-column> -->

## General Skills

Administer
: To manage land and laborers, or a workshop, its journeyfolk and apprentices.

Build
: To build structures, to appraise such structures (traps and anomalies?).

Cook
: To prepare meals

Exert
: To climb, run, lift, throw. Athletic training.

Fish
: To catch fish and other aquatic creatures.

Gather
: To gather herbs, mushrooms, to identify plants.

Grow
: To cultivate crops and the like.

Heal
: To mend wounds, combat diseases, neutralize poisons.
: This skill is used when stabilising _Mortally Wounded_ characters, its importance cannot be overstated.

Herd
: To herd cattle, to take care of the animals.

Hunt
: To take game with snare, arrow or spear, to know the habits and the manner of preys.

Lead
: To conduct and inspire people.

Negotiate
: To talk, to convince.

Perform
: To sing, dance, or play an instrument. To know songs and stories.

Pray
: To know how to perform the religious rites, to know the religious history.

Read
: At +0, read. From +1 on, read and write.

Ride
: To ride an animal, to drive a cart or carriage. To take care of the animal.

Sail
: To sail and navigate a ship, to build a craft. To read sea weather, to manage sailors.

Scout
: To gather information, unnoticed.

Spy
: to observe, to notice. To gather information.

Swim
: To swim, to be at ease in the water.

Trade
: To buy and sell advantageously, to value goods correctly, to deal with traders and merchants.

Craft
: One of the many crafts of the era.

Know
: Grammar, logic, rhetoric, then arithmetic, geometry, music, astronomy.
: Or something else.

<!--
  craftsmen:

  * ale maker
  * weaponsmith
  * blacksmith
  * carpenter
  * lumberjack
  * charcoal maker
  * miller
  * butcher
  * baker
  * wheelwright
  * coppersmith
  * shoemaker
  * mason
  * joiner
  * miner
  * potter
  * sadler
  * stonecutter
  * tanner
  * cooper
  * shipwright
  * cabinet maker
  * rope maker
-->

<!-- </div.right-column> -->
<!-- </div.two-columns> -->

<script>

onDocumentReady(function() {
  elts('section[data-aa-title="skills"] dt')
    .forEach(function(e) {
      if ( ! (e.textContent === 'Craft' || e.textContent === 'Know')) return;
      e.classList.add('generic');
    });
});

</script>
