

# Armor Class or AC
# : TODO
#
# Attack Bonus
# : TODO
#
# AC
# : See __Armor Class__
#
# Advantage
# : TODO
#
# Armor Class
# : TODO
#
# Attribute
# : TODO
#
# Background
# : TODO
#
# Creature
# : TODO
#
# CHA
# : Abbreviation for __Charisma__
#
# Character
# : TODO
#
# Charisma
# : TODO
#
# Class Ability
# : TODO
#
# CON
# : Abbreviation for __Constitution__
#
# Constitution
# : TODO
#
# DEX
# : Abbreviation for __Dexterity__
#
# Dexterity
# : TODO
#
# Disadvantage
# : TODO
#
# Exploration Turn
# : TODO
#
# Initiative
# : TODO
#
# INT
# : Abbreviation for __Intelligence__
#
# Intelligence
# : TODO
#
# Modifier
# : TODO
#
# Morale
# : TODO
#
# Monster
# : TODO
#
# NPC
# : See __Non-Player Character__
#
# Non-Player Character
# : TODO
#
# Option
# : An optional piece of rule, the referee decides if it is used at their table.
#
# PC
# : See __Player Character__
#
# Player
# : TODO
#
# Player Character
# : TODO
#
# <!-- PAGE BREAK glossary -->
#
# Reaction
# : TODO
#
# Referee
# : TODO
#
# Round
# : TODO
#
# Save
# : TODO
#
# Saving Throw
# : TODO
#
# Scene
# : TODO
#
# Skill
# : TODO
#
# Social Class
# : TODO
#
# STR
# : Abbreviation for __Strength__
#
# Strength
# : TODO
#
# Surprise
# : TODO
#
# Talent
# : TODO
#
# Turn
# : TODO
#
# WIS
# : Abbreviation for __Wisdom__
#
# Wisdom
# : TODO

GLOSSARY = %{
Armor Class or AC

Strength or `STR`

Strength Modifier or `STR`m
}

entries = []
  entry = []
  GLOSSARY.strip.split("\n")
    .each do |l|
      if l == ''
        entries << entry
        entry = []
      elsif entry.empty?
        entry << l << []
      else
        entry.last << l
      end
    end
entries << entry

puts "<!-- <div.glossary> -->"
puts
puts "## Glossary"
puts
entries.sort_by(&:first)
  .each do |e|
    puts e.first
    puts e.last
    puts
  end
puts "<!-- </div> -->"

