
<!-- .margin.compass -->
* _Character Creation_
* **Abis & Saves**
* Background
* Class
* Traits
* Hits Points
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

<!--img src="csheet_abilities.png" /-->


## Compute TCs

A player rolls against their character's TCs.

<!-- .save-mean.tcs -->
| TC       | Use examples                                             | Value (round up)                       |
|----------|----------------------------------------------------------|----------------------------------------|
| Body     | overcoming physical challenges                           | ← (`STR TC` + `CON TC` + `DEX TC`) / 3 |
| Soul     | overcoming mental challenges                             | ← (`INT TC` + `WIS TC` + `CHA TC`) / 3 |
| Physical | overcoming poison, disease, or exhaustion                | ← (`STR TC` + `CON TC`) / 2            |
| Evasion  | overcoming sudden perils                                 | ← (`DEX TC` + `INT TC`) / 2            |
| Mental   | overcoming spells, charms, or illusions                  | ← (`WIS TC` + `CHA TC`) / 2            |
| Learning | overcoming ignorance; when acquiring new skills or feats | ← (`INT TC` + `WIS TC`) / 2            |
| Impulse  | checking instinctive reactions                           | ← (`DEX TC` + `WIS TC`) / 2            |



## Compute DCs

An opponents rolls against a character's DCs.

<!-- .save-mean.dcs -->
| DC       | Use examples                          | Value                |
|----------|---------------------------------------|----------------------|
| Body     | opposing physical actions             | ← 21 - `Body TC`     |
| Soul     | opposing mental actions               | ← 21 - `Soul TC`     |
| Physical | opposing physiological actions        | ← 21 - `Physical TC` |
| Evasion  | opposing "sports"                     | ← 21 - `Evasion TC`  |
| Mental   | opposing persuasion                   | ← 21 - `Mental TC`   |
| Learning | opposing scholar arguments            | ← 21 - `Learning TC` |
| Impulse  | ~~Initiative modifier~~               | ← 21 - `Impulse TC`  |



<table id="dctc_table" class="dctc">
  <tr><td class="l">DC</td><td class="c">⇌</td><td class="r">TC</td></tr>
  <tr><td class="l"> 3</td><td class="c"> </td><td class="r">18</td></tr>
  <tr><td class="l"> 4</td><td class="c"> </td><td class="r">17</td></tr>
  <tr><td class="l"> 5</td><td class="c"> </td><td class="r">16</td></tr>
  <tr><td class="l"> 6</td><td class="c"> </td><td class="r">15</td></tr>
  <tr><td class="l"> 7</td><td class="c"> </td><td class="r">14</td></tr>
  <tr><td class="l"> 8</td><td class="c"> </td><td class="r">13</td></tr>
  <tr><td class="l"> 9</td><td class="c"> </td><td class="r">12</td></tr>
  <tr><td class="l">10</td><td class="c"> </td><td class="r">11</td></tr>
  <tr><td class="l">TC</td><td class="c">⇌</td><td class="r">DC</td></tr>
</table>

<script>
onDocumentReady(function() {
  elt('[data-aa-title="abilities"] .margin').appendChild(elt('#dctc_table'));
});
</script>

