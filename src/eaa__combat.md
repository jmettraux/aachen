
# combat

## sides

A combat usually involves two sides, the player characters and their allies' side and the opposing side.

## rounds

A combat situation is divided in **rounds** of roughly six seconds. Every participant takes their turn during the round, then another round begins.

1. reaction roll if necessary
2. surprise round if necessary
3. initiative roll
4. round begins
  * initiative side takes their turns
  * other side takes their turns
  * go to 4, next round begins

## surprise

Attackers always try to achieve surprise.

To determine if a side surprise the other, an opposed roll DEX/Sneak versus WIS/Notice can be used. If the attackers DEX/Sneak roll prevails, they get a full round of action to themselves. Initiative is rolled when this surprise round ends.

If a group of undisciplined and/or poorly trained non-player characters is surprised, the referee might make a Morale check for them.

## initiative

The player character side throws 1d8 and adds the best DEX modifier found among them to the result. The opposing side does the same. The side with the highest result goes first. In case of tie, the player character side goes first.

Each side then lets act its members in any order they like. Once they have all had their turn, the other side starts acting. When both side have acted for the round, the next round begins, again starting with the side that initially won the initiative.

**Option:** Each player character rolls for their own initiative, 1d8 + DEX modifier. The referee rolls once for the opposing side. Advantage: it's not all or nothing, one or more player character may act before the opposing side. Disadvantage: order of action is not group decided, but dice decided, potentially hindering group tactics.

TODO sequence for the initiative optional rule

## in and out of melee

TODO free attack

## attacks

To determine if an attack hits or not, 1d20 is rolled, the class attack bonus and the relevant attribute modifier (STR or DEX) are added. The skill level in Stab, Shoot or Punch is added as well. If the result is greater or equal to the opponents's Armor Class, then the attack hits.

For example, a 4th level fighter with a +1 STR modifier and Stab 1 attacks with a spear an AC 14 enemy guard. The fighter has to roll 1d20 + 4 (class attack bonus) + 1 (STR mod) + 1 (Stab level 1), so 1d20 + 6 and do 14 or better.

Unlike skill checks, no level in Stab, Shoot, or Punch is not counted as -1, but as -2. Thus if the fighter had no training in Stab, their hit roll would become 1d20 + 4 + 1 - 2, so 1d20 + 3.

The weapon dictates which attribute modifier is used, the rule of thumb is STR for melee weapons and DEX for ranged weapons. Some weapons let the user choose between STR and DEX, the attribute modifier is used for the attack hit roll and the attack damage roll (and eventually shock damage).

### melee attacks

Melee attacks usually have a _range_ of 5 feet. Some weapons or creature attacks have the _long_ trait, letting them target foes within 10 feet.

TODO

| Circumstance                          | Mod |
|---------------------------------------|----:|
| Melee attacking an adjacent prone foe |  +2 |
| Melee attacking while prone           |  -4 |

### ranged attacks

Ranged weapon and creature ranged attacks have a short and a long range. For example, a large bow is 100ft / 600ft. From 100ft to 600ft, the modifier is -2, beyond 600ft, no chance to hit.

| Circumstance                                     | Mod |
|--------------------------------------------------|----:|
| Shooting at an adjacent prone foe                |  +2 |
| Shooting at long range                           |  -2 |
| Shooting at a distant prone foe                  |  -2 |
| Shooting a single handed weapon while in contact |  -4 |
| The target is at least half behind cover         |  -2 |
| The target is almost completely in cover         |  -4 |

Shooting a two-handed weapon while in contact is not allowed.

### damage

TODO

### shock damage

Some weapons or creature attacks have _shock damage_. It is expressed as dmg / AC and only applies to melee attacks.

Shock damage indicates the minimum amount of damage inflicted, miss or not. The STR or DEX modifier applies, magical bonuses apply too.

If the opponent AC is superior to the shock damage target AC, shock damage is not considered.

For example a fighter with STR +1 uses a "2 / AC 13" sword. An opponent with an AC of 13 or less gets at least 2 + 1 points of damage should the fighter make a melee attack on them. In case of hit, 1d8 + 1 (STR) is rolled, a roll of 1 or 2 both inflict 3 points of damage.

### execution attacks

TODO

## shoving and grappling

TODO

## wielding two weapons

TODO

## 1d20 vs target table

| target | 1d20 |   adv  |  ~ |   dis  |  ~ |
|-------:|-----:|-------:|---:|-------:|---:|
|      2 |  95% | 99.75% | +1 | 90.25% | -1 |
|      3 |  90% | 99.00% | +2 | 81.00% | -2 |
|      4 |  85% | 97.75% | +3 | 72.25% | -3 |
|      5 |  80% | 96.00% | +3 | 64.00% | -3 |
|      6 |  75% | 93.75% | +4 | 56.25% | -4 |
|      7 |  70% | 91.00% | +4 | 49.00% | -4 |
|      8 |  65% | 87.75% | +5 | 42.25% | -5 |
|      9 |  60% | 84.00% | +5 | 36.00% | -5 |
|     10 |  55% | 79.75% | +5 | 30.25% | -5 |
|     11 |  50% | 75.00% | +5 | 25.00% | -5 |
|     12 |  45% | 69.75% | +5 | 20.25% | -5 |
|     13 |  40% | 64.00% | +5 | 16.00% | -5 |
|     14 |  35% | 57.75% | +5 | 12.25% | -5 |
|     15 |  30% | 51.00% | +4 |  9.00% | -4 |
|     16 |  25% | 43.75% | +4 |  6.25% | -4 |
|     17 |  20% | 36.00% | +3 |  4.00% | -3 |
|     18 |  15% | 27.75% | +3 |  2.25% | -3 |
|     19 |  10% | 19.00% | +2 |  1.00% | -2 |
|     20 |   5% |  9.75% | +1 |  0.25% | -1 |

The fighter in the example above had a hit roll 1d20 + 6 and do 14 or better. So the target is 8, at 65%. Giving the advantage makes the probability jump to 87.75% (which is equivalent to giving a +5).

