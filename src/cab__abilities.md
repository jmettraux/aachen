
<!-- .margin.compass -->
* _Character Creation_
* **Abis & Saves**
* Background
* Class
* Traits
* Hit Points
* Name
* Equipment



# Determine Abilities

<!-- .abilities -->
| Name         | Att   | Description              |
|--------------|-------|--------------------------|
| Strength     | `STR` | physical power           |
| Dexterity    | `DEX` | agility and coordination |
| Constitution | `CON` | hardiness and endurance  |
| Intelligence | `INT` | book smart               |
| Wisdom       | `WIS` | street smart             |
| Charisma     | `CHA` | force of character       |

Roll 3d6 and assign in order. Replace the lowest roll with a 14.

**Or** roll 3d6 six times, replace the lowest with 14  and assign at will.

**Or** use the 14, 12, 11, 10, 9, 7 array and assign at will.


<!-- clear -->


## Compute Ability TCs

For each ability, compute its `TC` (target class). `ABI TC` = 21 - `ABI`.


## Compute Save TCs and Initiative mod

<!-- .saves -->
| Save     | Against                                    | Score |
|----------|--------------------------------------------|-------|
| Physical | poison, disease, or exhaustion             | mean of `STR TC` and `CON TC`, round up |
| Evasion  | magical effects, illusions, or temptations | mean of `DEX TC` and `INT TC`, round up |
| Mental   | sudden explosions, sudden pits or perils   | mean of `WIS TC` and `CHA TC`, round up |

The _INItiative modifier_ is equal to the mean of `DEX` and `WIS` rounded down.

The _learning TC_ is equal to the mean of `INT` and `WIS` rounded up.


## Example

<!-- .example -->
| Ability | Score | TC               | Save         | TC |
|:-------:|:-----:|:----------------:|:------------:|:--:|
| `STR`   |     7 | 21 -  7 = **14** |              |    |
| `CON`   |     7 | 21 -  7 = **14** | **Physical** | (14 + 14) / 2 = **14** |
| `DEX`   |    15 | 21 - 15 =  **6** |              |                        |
| `INT`   |     9 | 21 -  9 = **12** | **Evasion**  | (6 + 12) / 2 = **9**   |
| `WIS`   |    14 | 21 - 14 =  **7** |              |                        |
| `CHA`   |     7 | 21 -  7 = **14** | **Mental**   | (7 + 14) / 2 = **11**  |

Initiative modifier = mean- of `DEX` and `WIS` = (15 + 14) / 2 = **14**

Learning TC = mean+ of `INT TC` and `WIS TC` = (12 + 7) / 2 = **10**

