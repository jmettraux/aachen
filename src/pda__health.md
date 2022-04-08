
<!-- .margin.compass -->
* _Playing the Game_
* Checks
* Combat
* Cbt Actions
* **Taking Hits**
* Travel
* Exploration
* Encumbrance
* Advancement


# Taking Hits

Hit Points
: a measure of grit, fortitude.

Exhaustion Levels
: a measure of fatigue.

Reaching 0 HP
: when an opponent reaches 0 HP, it is considered dead;
: when a character does, it is considered out of action.

Out of action
: Exhaustion Level immediately reaches 5;
: Character becomes unconscious.

First aid
: TODO

Post Combat
: Exhaustion Level increase by 1 (max EL 5, so no death);
: Referee may rule: "no exhaustion increase"; or
: "exhaustion increase by 1 on failed `CON TC` check".

<hr/>

Exhaustion level 0
: "fresh character".

EL 1
: -1 on all checks.

EL 2
: -2 on all checks.

EL 3
: disadvantage on all checks;

EL 4
: and AC maxed at 12;

EL 5
: and speed reduced in half.

EL 6
: death.

<hr/>

Short rest
: is one hour of light activity;
: not more than three short rests per 24 hours;
: regain 1d6 HP;
: if already at HP max, decrease Exhaustion Level by 1.

Long rest
: is 8 hours of light activity or sleep;
: at most 2 hours on watch;
: regain level × 1d6 HP;
: if already at HP max, decrease Exhaustion Level by 1d2.

<hr/>

Reaching 0 HP
: TODO

Wounds
: TODO


<!--
(more generally health FIXME)

When a character reaches 0 HPs, it is considered _mortally wounded_. If they endure further damage they die.

Each round, when their initiative turn comes, the player rolls 1d20 + 1 ≥ `PHY TC`, if they fail, they die.

Another character may try a _Heal_ skill check, for example 1d20 + _Heal_ ≥ `INT TC`, or 1d20 + _Heal_ ≥ wounded `CON TC`.

If the skill check is successful, the wounded character is stabilized, and will be able to go on after the combat ends. Taking further damage here will bring them back to _mortally wounded_.

The referee might rule the character surviving a _mortally wounded_ episode will be scarred and ask for a roll on the following table. The amount of damage that downed the character determines the dice to roll from d4+d20 to 6d4. If the character already suffers from the resulting scar, it is ignored.
-->


<!-- PAGE BREAK health -->

<!-- .margin.compass -->
* _Playing the Game_
* Checks
* Combat
* Cbt Actions
* **Taking Hits**
* Travel
* Exploration
* Encumbrance
* Advancement


## Wounds

TODO

[^1]

[^1]:
  If too complicated, roll 2d12 (let's hope it's not a double 1)

<style>
#scars { margin-top: 2rem; }
#scars td:nth-child(1) { text-align: right; }
#scars td:nth-child(2) { text-align: right; font-size: 90%; }
#scars td:nth-child(3) { text-align: right; font-size: 90%; }
#scars td:nth-child(4) { text-align: right; font-size: 90%; }
#scars td:nth-child(5) { text-align: right; font-size: 90%; }
#scars td:nth-child(6) { text-align: right; font-size: 90%; }
#scars td:nth-child(7) { color: red; }
#scars td:nth-child(8) { font-size: 81%; }
#scars tr:nth-child(1) td { color: black; }
#scars tr:nth-child(2) td { color: black; }
#scars tr:nth-child(3) td { color: black; }
#scars tr:nth-child(4) td { color: black; }
#scars tr:nth-child(5) td { color: black; }
#scars th { padding-left: 0.2rem; padding-right: 0.1rem; }
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
<tr><td></td><td class="lg"></td><td></td><td></td><td></td><td></td><td colspan="2">Damage ≥ <code>CON DC</code></td></tr>
<tr><td></td><td class="lg"></td><td></td><td class="lg"></td><td class="lg"></td><td class="lg"></td><td class="lg" colspan="2">Damage > 12</td></tr>
<tr><td></td><td class="lg"></td><td></td><td class="lg"></td><td></td><td></td><td colspan="2">Damage > 6</td></tr>
<tr><td></td><td class="lg"></td><td></td><td class="lg"></td><td></td><td class="lg"></td><td class="lg" colspan="2">else</td></tr>
<tr><th>roll</th><th class="lg">d4+d20</th><th>2d12</th><th class="lg">3d8</th><th>4d6</th><th class="lg">6d4</th><th></th><th></th></tr>
<tr class="r"><td> 2</td><td>1.25%</td><td>0.69%</td><td>     </td><td>      </td><td>      </td><td>Death</td><td></td></tr>
<tr class="r"><td> 3</td><td>2.50%</td><td>1.39%</td><td>0.20%</td><td>      </td><td>      </td><td>Gut Wound</td><td><code>CON</code> - 4</td></tr>
<tr class="r"><td> 4</td><td>3.75%</td><td>2.08%</td><td>0.59%</td><td> 0.08%</td><td>      </td><td>Missing Leg</td><td><code>DEX</code> - 4, mvmt reduced to 10ft</td></tr>
<tr class="r"><td> 5</td><td>5.00%</td><td>2.78%</td><td>1.17%</td><td> 0.31%</td><td>      </td><td>Missing Arm</td><td><code>DEX</code> - 4</td></tr>
<tr class="r"><td> 6</td><td>5.00%</td><td>3.47%</td><td>1.95%</td><td> 0.77%</td><td> 0.02%</td><td>Missing Hand</td><td><code>DEX</code> - 2</td></tr>
<tr class="r"><td> 7</td><td>5.00%</td><td>4.17%</td><td>2.93%</td><td> 1.54%</td><td> 0.15%</td><td>Incontinent</td><td><code>CHA</code> - 2, often stinking of piss</td></tr>
<tr class="r"><td> 8</td><td>5.00%</td><td>4.86%</td><td>4.10%</td><td> 2.70%</td><td> 0.51%</td><td>Throat Wound</td><td>unable to speak above a whisper</td></tr>
<tr class="r"><td> 9</td><td>5.00%</td><td>5.56%</td><td>5.47%</td><td> 4.32%</td><td> 1.37%</td><td>Blinded Eye</td><td>-4 when throwing or shooting</td></tr>
<tr class="r"><td>10</td><td>5.00%</td><td>6.25%</td><td>7.03%</td><td> 6.17%</td><td> 2.93%</td><td>Unhealing Abcess</td><td><code>CHA</code> - 1, <code>CON</code> - 1</td></tr>
<tr class="r"><td>11</td><td>5.00%</td><td>6.94%</td><td>8.20%</td><td> 8.02%</td><td> 5.27%</td><td>Ripped Muscle</td><td><code>STR</code> - 2</td></tr>
<tr class="r"><td>12</td><td>5.00%</td><td>7.64%</td><td>8.98%</td><td> 9.65%</td><td> 8.20%</td><td>Broken Knee</td><td><code>DEX</code> - 2 and movement halved</td></tr>
<tr class="r"><td>13</td><td>5.00%</td><td class="bo">8.33%</td><td class="bo">9.38%</td><td>10.80%</td><td>11.13%</td><td>Destroyed Nose</td><td><code>CHA</code> - 2, loss of sense of smell</td></tr>
<tr class="r"><td>14</td><td>5.00%</td><td>7.64%</td><td class="bo">9.38%</td><td class="bo">11.27%</td><td>13.33%</td><td>Flesh Wound</td><td>that's it</td></tr>
<tr class="r"><td>15</td><td>5.00%</td><td>6.94%</td><td>8.98%</td><td>10.80%</td><td class="bo">14.16%</td><td>Ruined Ear</td><td>-1 on all Spy checks</td></tr>
<tr class="r"><td>16</td><td>5.00%</td><td>6.25%</td><td>8.20%</td><td> 9.65%</td><td>13.33%</td><td>Stiffened Scars</td><td><code>CHA</code> - 1, <code>DEX</code> - 1</td></tr>
<tr class="r"><td>17</td><td>5.00%</td><td>5.56%</td><td>7.03%</td><td> 8.02%</td><td>11.13%</td><td>Mangled Fingers</td><td>bow fingers gone</td></tr>
<tr class="r"><td>18</td><td>5.00%</td><td>4.86%</td><td>5.47%</td><td> 6.17%</td><td> 8.20%</td><td>Torn Face</td><td><code>CHA</code> - 2</td></tr>
<tr class="r"><td>19</td><td>5.00%</td><td>4.17%</td><td>4.10%</td><td> 4.32%</td><td> 5.27%</td><td>Skull-Cracked</td><td><code>INT</code> - 2</td></tr>
<tr class="r"><td>20</td><td>5.00%</td><td>3.47%</td><td>2.93%</td><td> 2.70%</td><td> 2.93%</td><td>Brain-Bruised</td><td><code>WIS</code> - 2</td></tr>
<tr class="r"><td>21</td><td>5.00%</td><td>2.78%</td><td>1.95%</td><td> 1.54%</td><td> 1.37%</td><td>Smashed Ribs</td><td><code>CON</code> - 2</td></tr>
<tr class="r"><td>22</td><td>3.75%</td><td>2.08%</td><td>1.17%</td><td> 0.77%</td><td> 0.51%</td><td>Shattered Elbow</td><td><code>DEX</code> - 2, costs the use of an arm</td></tr>
<tr class="r"><td>23</td><td>2.50%</td><td>1.39%</td><td>0.59%</td><td> 0.31%</td><td> 0.15%</td><td>Man-Wounded</td><td>unable to sire heirs</td></tr>
<tr class="r"><td>24</td><td>1.25%</td><td>0.69%</td><td>0.20%</td><td> 0.08%</td><td> 0.02%</td><td>Collapsed Lung</td><td><code>CON</code> - 4</td></tr>
</table>

