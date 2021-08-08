
# equip

The referee grants equipment to the character, according to their background, origin, and class.

TODO

## monetary system

| Abb | Name     | Latin Name | French Name | Value | Value d |
|-----|----------|------------|-------------|------:|--------:|
| L   | Pound    | Liber      | Livre       |   20s |    240d |
| s   | Shilling | Solidus    | Sou         |       |     12d |
| d   | Pence    | Denarius   | Denier      |       |      1d |
| f   | Farthing |            | Ferlin      |       |    1/4d |


## armor

TODO

| Name         | AC or mod                |   Cost | Cost d |
|--------------|:------------------------:|-------:|-------:|
| No Armor     | 10 + DEX mod             |        |        |
| &nbsp;       |                          |        |        |
| Gambeson     | 12 + DEX mod             |     1L |   240d |
| Mail Shirt   | 14 + DEX mod             |     2L |   480d |
| Mail Hauberk | 16 + DEX mod             |     3L |   720d |
| &nbsp;       |                          |        |        |
| Shield small | 13 + DEX mod or +1 to AC |     3s |    36d |
| Shield large | 14 + DEX mod or +1 to AC |     4s |    48d |
| Shield broad | 15 + DEX mod or +1 to AC |     6s |    72d |

## weapons

Melee weapons:

| Name           | Attribute | Dmg  | Shk/AC | Short Range       | Long Range        | Trait         |   Cost | Cost d |
|----------------|:---------:|-----:|:------:|:-----------------:|:-----------------:|---------------|-------:|-------:|
| Axe            | STR/DEX   |  1d6 | 2 / 15 | 10ft 3m 2sq       | 30ft 9m 6sq t     | T             |     6s |    72d |
| Axe, war       | STR       | 1d10 | 3 / 15 |                   |                   | 2H            |     9s |   108d |
| Club           | STR/DEX   |  1d4 | 1 / 13 | 10ft 3m 2sq       | 30ft 9m 6sq t     | T, LL         |        |        |
| Club, large    | STR       | 1d10 | 2 / 15 |                   |                   | 2H            |        |        |
| Dagger         | STR/DEX   |  1d4 | 1 / 15 | 30ft 9m 6sq t     | 60ft 18m 12sq tt  | S, T, PM      |     2s |    24d |
| Halberd      x | STR       | 1d10 | 2 / 15 |                   |                   | L             |     5s |    60d |
| Hammer, war    | STR       |  1d8 | 1 / 18 |                   |                   |               |     8s |    96d |
| Hammer, great  | STR       | 1d10 | 2 / 18 |                   |                   | 2H            |    10s |   120d |
| Hatchet        | STR       |  1d4 | 1 / 13 |                   |                   |               |     1s |    12d |
| Knife          | STR/DEX   |  1d4 | 1 / 15 |                   |                   |               |     1s |    12d |
| Mace           | STR       |  1d6 | 1 / 18 |                   |                   | LL            |     7s |    84d |
| Pike           | STR       |  1d8 | 1 / 18 |                   |                   | 2H, L         |     5s |    60d |
| Seax           | STR/DEX   |  1d6 | 1 / 15 |                   |                   |               |     2s |    24d |
| Spear, barbed  | STR/DEX   |  1d6 | 2 / 13 | 30ft 9m 6sq t     | 60ft 18m 12sq tt  | T             |     5s |    60d |
| Spear, broad   | STR       |  1d8 | 2 / 13 |                   |                   |               |     6s |    72d |
| Spear, heavy   | STR       | 1d10 | 2 / 15 |                   |                   | 2H            |     7s |    84d |
| Staff          | STR/DEX   |  1d6 | 1 / 13 |                   |                   | 2H, LL        |        |        |
| Sword, long    | STR/DEX   |  1d8 | 2 / 13 |                   |                   |               |     1L |   240d |
| Sword, short   | STR/DEX   |  1d6 | 2 / 15 |                   |                   |               |    10s |   120d |
| Sword, great   | STR       | 1d12 | 2 / 15 |                   |                   | 2H            |     2L |   480d |
| &nbsp;         |           |      |        |                   |                   |               |        |        |
| Shield bash S  | STR/DEX   |  1d4 |        |                   |                   | LL            |        |        |
| Shield bash L  | STR       |  1d6 | 1 / 13 |                   |                   | LL            |        |        |
| Unarmed attack | STR/DEX   | 1d2+Punch |   |                   |                   | LL            |        |        |

Ranged weapons:

| Name           | Attribute | Dmg  | Short Range       | Long Range        | Trait         |   Cost | Cost d |
|----------------|:---------:|-----:|:-----------------:|:-----------------:|---------------|-------:|-------:|
| Bow, small     | DEX       |  1d6 | 50ft 15m 10sq V   | 300ft 90m 60sq    | 2H, R, XA     |     2s |    24d |
| Bow, large     | STR       |  1d8 | 100ft 30m 20sq VV | 600ft 180m 120sq  | 2H, R, XA     |     3s |    36d |
| Crossbow     x | DEX       | 1d10 | 100ft 30m 20sq VV | 300ft 90m 60sq    | 2H, SR, XA    |     7s |    84d |
| Sling          | DEX       |  1d6 | 50ft 15m 10sq V   | 100ft 30m 20sq VV | 2H, R         |     6d |     6d |

Weapon traits:

| Trait | Description |
|-------|-------------|
| 2H    | Two Handed. |
| L     | Long, allows melee attacks up to 10 feet, even if an ally is in the way. An opponent between 5 to 10 feet can disengage freely from the L weapon wielder, no need for a _fighting withdrawal_. |
| LL    | Less Lethal, opponents brought to zero HP may be left alive (not mortally wounded), at the wielder's discretion. |
| XA    | when used for an eXecution Attack, a -1 penalty is applied to the target Physical Save and the damage is doubled. |
| R     | Reload. Takes a _Move Action_ to reload. If the user has at least Shoot 1 skill, only an _On Turn Action_ is necessary. |
| SR    | Slow Reload. Takes a _Main Action_ to reload. |
| T     | Throwable. Can be used in melee and also thrown at the listed range. No shock damage when thrown. -4 to the hit roll if throwing while in melee with an opponent. |

