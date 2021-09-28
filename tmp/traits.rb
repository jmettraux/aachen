
TRAITS = %{
Firm
: +1 on _Physical_ saves
: Advantage on _Physical_ saves

Evasive
: +1 on _Evasion_ saves
: Advantage on _Evasion_ saves

Wise
: +1 on _Mental_ saves
: Advantage on _Mental_ saves

Lucky
: +1 on _Luck_ saves
: Advantage on _Luck_ saves

Swerving
: Once per scene, as an instant action, a successful attack against the character can be negated
: As per · or a missed attack by the character can be made to succeed

~~Intricate~~[^1]
: May cast spells,<br/>CP = char level × ~~CP factor~~
: May cast spells,<br/>CP = char level + (char level × ~~CP factor~~)
[^1]:
  Better prevent non-`caster`s from taking `INTRICATE`, at least not at level 1 and not if there is no mentor around.

Skillful
: Once per scene, as an instant action, a missed non-combat skill check can be turned into a success
: As per · and the character has a +1 on checks for known skills (level 0 or better)

Deceitful
: Once per scene, as an instant action, a missed _Sneak_ or _Convince_ check can be turned into a success
: As per · and the character has a +1 on _Sneak_ and _Convince_ checks aimed at deception

Scheming
: Each combat turn,  may exchange their initiative rank with someone in the party
: Each combat turn,  may reshuffle the initiative ranks of the party

Artful
: TODO
: TODO

Sharp
: TODO
: TODO

Vigorous
: TODO
: TODO

Watchful
: TODO
: TODO

Zealous 1
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 2
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 3
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 4
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 5
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 6
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 7
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 8
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding

Zealous 9
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
: Advantage on Luck save lore ipsum nihil obstat pan kun pudding
}

def increase(count, maxes)

  a, b = count.chars.collect(&:to_i)
  b = b + 1
  if b > maxes[1]
    a = a + 1
    b = 1
  end

  "#{a}#{b}"
end

traits = []
current = []
  #
TRAITS.strip.split("\n").each do |line|
  if line == ''
    traits << current; current = []
  else
    current << line
  end
end
traits << current

#p traits.size

puts

number = '10'

traits
  .sort_by { |a| a.first.gsub(/[^a-zA-Z]/, '') }
  .each { |a|
    number = increase(number, [ 4, 6 ])
    puts "**#{number}** #{a.first}"
    puts a[1..-1]
    puts }

