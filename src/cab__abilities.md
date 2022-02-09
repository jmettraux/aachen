
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
| Name         | Abi      | Description              |
|--------------|----------|--------------------------|
| Strength     | `STR DC` | physical power           |
| Dexterity    | `DEX DC` | agility and coordination |
| Constitution | `CON DC` | hardiness and endurance  |
| Intelligence | `INT DC` | book smart               |
| Wisdom       | `WIS DC` | street smart             |
| Charisma     | `CHA DC` | force of character       |

Roll 2 series of 6 × 3d6; pick best of the 2 series; assign the 6 numbers at will.

**Or** roll 3d6 and assign in order. Replace the lowest roll with a 14.

**Or** use the 14, 12, 11, 10, 9, 7 array and assign at will.

<!-- clear -->

<!--img src="csheet_abilities.jpg" /-->


## Compute Save/Mean TCs

<!-- .save-mean -->
| TC    | Use                 | Value (round up) |
|-------|---------------------|------------------|
| Body  | Physical challenges | (`STR TC` + `CON TC` + `DEX TC`) / 3 |
| Soul  | Mental challenges   | (`INT TC` + `WIS TC` + `CHA TC`) / 3 |
| Physical | Against poison, disease, or exhaustion | (`STR TC` + `CON TC`) / 2 |
| Evasion  | Against sudden perils                | (`DEX TC` + `INT TC`) / 2 |
| Mental   | Against spells, charms, or illusions | (`WIS TC` + `CHA TC`) / 2 |
| Learning | When acquiring new skills or feats   | (`INT TC` + `WIS TC`) / 2 |
| Impulse  | Checking instinctive reactions       | (`DEX TC` + `WIS TC`) / 2 |

_Evasion_ and _Impulse_ might seem interchangeable. _Impulse_ should be used over _Evasion_ when "gut feeling" is involved.


## Compute Save/Mean DCs

<!-- .save-mean -->
| DC       | Use                                     | Value              |
|----------|-----------------------------------------|--------------------|
| Body     | Opposition to physical actions          | 21 - `Body TC`     |
| Soul     | Opposition to mental actions            | 21 - `Soul TC`     |
| Physical | Opposition to physiological actions     | 21 - `Physical TC` |
| Evasion  | Opposition TODO                         | 21 - `Evasion TC`  |
| Mental   | Opposition TODO                         | 21 - `Mental TC`   |
| Learning | Opposition TODO                         | 21 - `Learning TC` |
| Impulse  | Opposition and ~~Initiative modifier~~  | 21 - `Impulse TC`  |

Opposition as presenting an opposing DC to the action of another character or creature. Save `TC`s are classical saving throws, while Save `DC`s are closer to `AC`.

