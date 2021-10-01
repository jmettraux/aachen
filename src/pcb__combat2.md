
<!-- .margin.compass -->
* _Playing the Game_
* Scenes & Saves
* Skill Checks
* **Combat**
* Cbt Actions
* Health
* Travel
* Exploration
* Advancement


## Actions

Actions that are common in combat:

<!-- <div.actions> -->

<!-- .alpha -->
* Main Action **MA**
  * make a melee attack
  * make a ranged attack
  * make a mob attack
  * cast a spell
  * use a skill
  * ready or stow an item
  * reload a weapon
  * shatter a shield
* Instant Action **IA**
  * drop an item
* Instant Action **IA** + Main Action **MA**
  * ~~go total defense~~
  * ~~make a snap attack~~

<!-- .bravo -->
* Move Action **MvA** + Main Action **MA**
  * charge
* Move Action **MvA**
  * ~~hold an action~~
  * lock shields
  * pick up an item
  * run
  * screen an ally
  * stand up
* On Turn Action **OTA**
  * ~~delay an action~~
  * go prone

<!-- </div> -->


<!-- .modifiers -->
| Circumstance                    | Mod |
|---------------------------------|----:|
| attacking an adjacent prone foe |  +2 |
| attacking while prone           |  -4 |

## Melee Attacks

Range
: usually 5ft 1.5m 1sq (the adjacent square);
: 10ft 3m 2sq, if the weapon or creature has the **L** (Long) trait;

Roll
: ~~1d20 + _class atk bonus_ + `STR`m~~ ≥ _target AC_;
: some weapons allow to use the `DEX`m instead;
: circumstance table above might add a modifier;
: natural 1 → always failure | natural 20 → always success.

Dis-Advantage
: advantage → highest of 2d20 | disadvantage → lowest of 2d20.

Damage
: in case of successful attack;
: ~~_weapon damage dice_ + `STR`m~~;[^1]
: or _weapon damage dice_ + `DEX`m if `DEX`m used for atk roll.

Shock Damage
: in case of failed attack;
: and if _target AC_ ≤ _weapon shock AC_;
: ~~_weapon shock damage_ + `STR`m~~ (`DEX`m if used for atk roll).

[^1]:
  Shock ~~2/15~~ means dmg 2 + _attr mod_ if _target AC_ ≤ 15


<!-- .modifiers -->
| Circumstance                              | Mod    |
|-------------------------------------------|:------:|
| The target is at least half behind cover  | -2     |
| · is almost completely in cover           | -4     |
| Shooting at an adjacent prone foe         | +2     |
| · at long range                           | -2     |
| · at a distant prone foe                  | -2     |
| · a single handed weapon while in contact | -4     |
| · a two handed weapon while in contact    | **No** |


## Ranged Attacks

Like Melee Attacks, but

Range
: as per weapon description.

Shock Damage
: none.

