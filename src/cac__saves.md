
<!-- PAGE UNBREAK -->


# Compute Saving Throws

<!--
To make a save, one has to roll a d20 against a saving throw score. If the result is equal or better than the score, the save is successful.

Physical Save
: When resisting a poison, a disease, or exhaustion.
: The score is 16, minus the best of the `STR` or `CON` modifiers, minus the character level.

Mental Save
: When resisting magical effects, illusions, or warding off tempations and affirming one's willpower.
: The score is 16, minus the best of the `WIS` or `CHA` modifiers, minus the character level.

Evasion Save
: Diving and dodging from sudden explosions, pits, and perils.
: The score is 16, minus the best of the `DEX` or `INT` modifiers, minus the character level.

Luck Save
: When only sheer good luck can save the character.
: The score is a 16 minus the character level. No attribute modifier involved.
-->

Physical
: 16 - (max(`STR`m, `CON`m)) - _character level_

Evasion
: 16 - (max(`DEX`m, `INT`m)) - _character level_

Mental
: 16 - (max(`WIS`m, `CHA`m)) - _character level_

Luck
: 16 - _character level_


## Computation example

A character of level 2 might have the following save scores:

<!-- .example -->
| Att   | Score | Mod | Max |Save         | Score                  |
|:-----:|:-----:|:---:|:---:|:-----------:|:----------------------:|
| `STR` |     7 |  -1 |     |             |                        |
| `CON` |     7 |  -1 | -1  |**Physical** | 16 - (-1) - 2 = **15** |
| `DEX` |    15 |  +1 |     |             |                        |
| `INT` |     9 |   0 | +1  |**Evasion**  | 16 - (+1) - 2 = **13** |
| `WIS` |    14 |  +1 |     |             |                        |
| `CHA` |     7 |  -1 | +1  |**Mental**   | 16 - (+1) - 2 = **13** |
|       |       |     |     |**Luck**     | 16        - 2 = **14** |
