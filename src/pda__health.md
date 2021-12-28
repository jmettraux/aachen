
<!-- .margin.compass -->
* _Playing the Game_
* Scenes & Saves
* Skill Checks
* Combat
* Cbt Actions
* **Health**
* Travel
* Exploration
* Advancement
* Combat


# Health

When a character reaches 0 HPs, it is considered _mortally wounded_. If they endure further damage they die.

Each round, when their initiative turn comes, the player rolls 1d20 + 1 ≥ `PHY TC`, if they fail, they die.

If another character assists them and succeeds a _Heal_ skill check, for example 1d20 + _Heal_ ≥ `INT TC`, the character is stabilized, and will be able to go on after the combat ends.

The referee might rule the character surviving a _mortally wounded_ episode will be scarred and ask for a roll on the following table. The amount of damage that downed the character determines the roll from d4+d20 to 6d4. If the character already suffers from the resulting scar, it is ignored.

[^1]

[^1]:
  If too complicated, roll 2d12 (let's hope it's not a double 1)

<style>
#scars { margin-top: 2rem; }
#scars td:nth-child(1) { text-align: right; }
#scars td:nth-child(2) { text-align: right; font-size: 83%; }
#scars td:nth-child(3) { text-align: right; font-size: 83%; }
#scars td:nth-child(4) { text-align: right; font-size: 83%; }
#scars td:nth-child(5) { text-align: right; font-size: 83%; }
#scars td:nth-child(6) { text-align: right; font-size: 83%; }
#scars td:nth-child(7) { color: red; }
#scars td:nth-child(8) { font-size: 80%; }
#scars tr:nth-child(1) td { color: black; }
#scars tr:nth-child(2) td { color: black; }
#scars tr:nth-child(3) td { color: black; }
#scars tr:nth-child(4) td { color: black; }
#scars tr:nth-child(5) td { color: black; }
#scars td.lg { background-color: lightgrey; }
#scars th.lg { background-color: lightgrey; }
#scars td.bo { font-weight: bold; }
#scars tr:nth-child(3n+6) td { border-bottom: 1px solid black; }
#scars tr.r td:nth-child(2) { background-color: lightgrey; }
#scars tr.r td:nth-child(4) { background-color: lightgrey; }
#scars tr.r td:nth-child(6) { background-color: lightgrey; }
</style>

<table id="scars" class="scars">
<tr><td></td><td class="lg"></td><td class="lg"></td><td class="lg"></td><td class="lg"></td><td class="lg"></td><td class="lg" colspan="2">Damage > 18</td></tr>
<tr><td></td><td class="lg"></td><td></td><td></td><td></td><td></td><td colspan="2">Damage ≥ CON</td></tr>
<tr><td></td><td class="lg"></td><td></td><td class="lg"></td><td class="lg"></td><td class="lg"></td><td class="lg" colspan="2">Damage > 12</td></tr>
<tr><td></td><td class="lg"></td><td></td><td class="lg"></td><td></td><td></td><td colspan="2">Damage > 6</td></tr>
<tr><td></td><td class="lg"></td><td></td><td class="lg"></td><td></td><td class="lg"></td><td class="lg" colspan="2">else</td></tr>
<tr><th>roll</th><th class="lg">d4+d20</th><th>2d12</th><th class="lg">3d8</th><th>4d6</th><th class="lg">6d4</th><th></th><th></th></tr>
<tr class="r"><td> 2</td><td>1.25%</td><td>0.69%</td><td>     </td><td>      </td><td>      </td><td>Death</td><td></td></tr>
<tr class="r"><td> 3</td><td>2.50%</td><td>1.39%</td><td>0.20%</td><td>      </td><td>      </td><td>Gut Wound</td><td>CON - 4</td></tr>
<tr class="r"><td> 4</td><td>3.75%</td><td>2.08%</td><td>0.59%</td><td> 0.08%</td><td>      </td><td>Missing Leg</td><td>DEX - 4, mvmt reduced to 10ft</td></tr>
<tr class="r"><td> 5</td><td>5.00%</td><td>2.78%</td><td>1.17%</td><td> 0.31%</td><td>      </td><td>Missing Arm</td><td>DEX - 4</td></tr>
<tr class="r"><td> 6</td><td>5.00%</td><td>3.47%</td><td>1.95%</td><td> 0.77%</td><td> 0.02%</td><td>Missing Hand</td><td>DEX - 2</td></tr>
<tr class="r"><td> 7</td><td>5.00%</td><td>4.17%</td><td>2.93%</td><td> 1.54%</td><td> 0.15%</td><td>Incontinent</td><td>CHA - 2, often stinking of piss</td></tr>
<tr class="r"><td> 8</td><td>5.00%</td><td>4.86%</td><td>4.10%</td><td> 2.70%</td><td> 0.51%</td><td>Throat Wound</td><td>unable to speak above a whisper</td></tr>
<tr class="r"><td> 9</td><td>5.00%</td><td>5.56%</td><td>5.47%</td><td> 4.32%</td><td> 1.37%</td><td>Blinded Eye</td><td>-4 when throwing or shooting</td></tr>
<tr class="r"><td>10</td><td>5.00%</td><td>6.25%</td><td>7.03%</td><td> 6.17%</td><td> 2.93%</td><td>Unhealing Abcess</td><td>CHA - 1, CON - 1</td></tr>
<tr class="r"><td>11</td><td>5.00%</td><td>6.94%</td><td>8.20%</td><td> 8.02%</td><td> 5.27%</td><td>Ripped Muscle</td><td>STR - 2</td></tr>
<tr class="r"><td>12</td><td>5.00%</td><td>7.64%</td><td>8.98%</td><td> 9.65%</td><td> 8.20%</td><td>Broken Knee</td><td>DEX - 2 and movement halved</td></tr>
<tr class="r"><td>13</td><td>5.00%</td><td class="bo">8.33%</td><td class="bo">9.38%</td><td>10.80%</td><td>11.13%</td><td>Destroyed Nose</td><td>CHA - 2, loss of sense of smell</td></tr>
<tr class="r"><td>14</td><td>5.00%</td><td>7.64%</td><td class="bo">9.38%</td><td class="bo">11.27%</td><td>13.33%</td><td>Flesh Wound</td><td>that's it</td></tr>
<tr class="r"><td>15</td><td>5.00%</td><td>6.94%</td><td>8.98%</td><td>10.80%</td><td class="bo">14.16%</td><td>Ruined Ear</td><td>-1 on all Notice checks</td></tr>
<tr class="r"><td>16</td><td>5.00%</td><td>6.25%</td><td>8.20%</td><td> 9.65%</td><td>13.33%</td><td>Stiffened Scars</td><td>CHA - 1, DEX - 1</td></tr>
<tr class="r"><td>17</td><td>5.00%</td><td>5.56%</td><td>7.03%</td><td> 8.02%</td><td>11.13%</td><td>Mangled Fingers</td><td>bow fingers gone</td></tr>
<tr class="r"><td>18</td><td>5.00%</td><td>4.86%</td><td>5.47%</td><td> 6.17%</td><td> 8.20%</td><td>Torn Face</td><td>CHA - 2</td></tr>
<tr class="r"><td>19</td><td>5.00%</td><td>4.17%</td><td>4.10%</td><td> 4.32%</td><td> 5.27%</td><td>Skull-Cracked</td><td>INT - 2</td></tr>
<tr class="r"><td>20</td><td>5.00%</td><td>3.47%</td><td>2.93%</td><td> 2.70%</td><td> 2.93%</td><td>Brain-Bruised</td><td>WIS - 2</td></tr>
<tr class="r"><td>21</td><td>5.00%</td><td>2.78%</td><td>1.95%</td><td> 1.54%</td><td> 1.37%</td><td>Smashed Ribs</td><td>CON - 2</td></tr>
<tr class="r"><td>22</td><td>3.75%</td><td>2.08%</td><td>1.17%</td><td> 0.77%</td><td> 0.51%</td><td>Shattered Elbow</td><td>DEX - 2, costs the use of an arm</td></tr>
<tr class="r"><td>23</td><td>2.50%</td><td>1.39%</td><td>0.59%</td><td> 0.31%</td><td> 0.15%</td><td>Man-Wounded</td><td>unable to sire heirs</td></tr>
<tr class="r"><td>24</td><td>1.25%</td><td>0.69%</td><td>0.20%</td><td> 0.08%</td><td> 0.02%</td><td>Collapsed Lung</td><td>CON - 4</td></tr>
</table>

<!-- .scars.hidden -->
| d100  | Scar                                                    |
|:-----:|---------------------------------------------------------|
|  1-4  | ~~Blinded Eye~~, -4 when throwing or shooting           |
|  5-9  | ~~Brain-Bruised~~, `WIS` - 2                            |
| 10-15 | ~~Broken Knee~~, `DEX` - 2 and movement halved          |
| 16-19 | ~~Collpased Lung~~, `CON` - 4                           |
| 20-23 | ~~Destroyed Nose~~, `CHA` - 2, loss of sense of smell   |
| 24-37 | ~~Flesh Wound~~, that's it                              |
| 38-39 | ~~Gut Wound~~, `CON` - 4                                |
| 40-43 | ~~Incontinent~~, `CHA` - 2, often stinking of piss      |
| 44-46 | ~~Man-Wounded~~, unable to sire heirs                   |
| 47-50 | ~~Mangled Fingers~~, bow fingers gone                   |
| 51-53 | ~~Missing Arm~~, `DEX` - 4                              |
| 54-57 | ~~Missing Hand~~, `DEX` - 2                             |
| 58-59 | ~~Missing Leg~~, `DEX` - 4, movement reduced to 10 feet |
| 60-64 | ~~Ripped Muscle~~, `STR` - 2                            |
| 65-68 | ~~Ruined Ear~~, -1 on all Notice checks                 |
| 69-72 | ~~Shattered Elbow~~, `DEX` - 2, costs the use of an arm |
| 73-77 | ~~Skull-Cracked~~, `INT` - 2                            |
| 78-81 | ~~Smashed Ribs~~, `CON` - 2                             |
| 82-87 | ~~Stiffened Scars~~, `CHA` - 1, `DEX` - 1               |
| 88-91 | ~~Throat Wound~~, unable to speak above a whisper       |
| 92-95 | ~~Torn Face~~, `CHA` - 2                                |
| 96-00 | ~~Unhealing Abcess~~, `CHA` - 1, `CON` - 1              |

