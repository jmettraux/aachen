
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

<!-- .saves -->
| Save     | Against                                    | Value                                     |
|----------|--------------------------------------------|-------------------------------------------|
| Physical | poison, disease, or exhaustion             | 16 - (max(`STR`m, `CON`m)) - _char level_ |
| Evasion  | magical effects, illusions, or temptations | 16 - (max(`DEX`m, `INT`m)) - _char level_ |
| Mental   | sudden explosions, sudden pits or perils   | 16 - (max(`WIS`m, `CHA`m)) - _char level_ |
| Luck     | bad luck ;-)                               | 16 - _char level_                         |


## Example

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
|       |       |     |     |             |                        |
|       |       |     |     |**Luck**     | 16        - 2 = **14** |

