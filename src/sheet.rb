
require 'ostruct'
require 'strscan'


hs = OpenStruct.new(
  page_width: "#{297 - 2 * 4.25}mm", # A4
  page_height: "#{210 - 2 * 4.25}mm", # A4
  #page_width: 215.9mm, # US Letter
  #page_height: 279.4mm, # US Letter
  size_a: '14pt',
  mul_a: '1.15',
  title_face: 'trajan-pro-3, serif',
  #main_face: 'minion-pro, serif',
  main_face: 'EB Garamond, serif',
  sans_face: 'ff-scala-sans-pro, sans-serif',
  circle_side: '3.0rem',
  border_width: '0.3rem',
  box_border_width: '0.10rem',
  box_width: '2.1rem',
  box_height: '1.1rem',
)
hs.cs = hs.circle_side

style = %{
  @import url('https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@0,400;0,500;0,600;0,700;0,800;1,400;1,500;1,600;1,700;1,800&display=swap');
  /*
  @import url('https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&display=swap');
  @import url("https://use.typekit.net/aqv1anf.css");
  */

  *, *::before, *::after { box-sizing: border-box; }

  html {

    font-family: #{hs.main_face};
    font-size: #{hs.size_a};
    line-height: #{hs.mul_a};
  }

  body {

    width: 100%;
    height: 100%;
    margin: 0;
    padding: 0;
  }

  .page {

    position: relative;

    width: #{hs.page_width};
    /*min-height: #{hs.page_height};*/
    max-height: #{hs.page_height};

    /*padding: 4.23mm; / * Brother printable area.... */
    /*padding: 0.17in; / * Brother printable area.... */

    margin: 0;
border: 1px solid grey;
  }

  .page-grid {
    display: grid;
    width: 100%;
    height: 100%;
    grid-template-columns: 44% auto;
    column-gap: 0.5rem;
  }

  .subgrid {
    display: grid;
    row-gap: 0.4rem;
  }

  .left.subgrid {
    column-gap: 0.3rem;
    grid-template-columns: 1.4rem auto;
  }
  .right.subgrid {
    column-gap: 0.3rem;
    grid-template-columns: 1.4rem auto 1.4rem 70%;
  }

  .vlabel {
    writing-mode: vertical-rl;
    text-orientation: mixed;
    justify-self: stretch;
    align-self: stretch;
    background-color: lightgrey;
    text-align: center;
  }

  .ability-grid {
    display: grid;
    width: 100%;
    height: 100%;
    place-items: center;
    grid-template-columns:
      #{hs.cs} 0.7rem #{hs.cs} 6.0rem #{hs.cs} 0.7rem #{hs.cs} auto;
  }

  .a-label {
    font-size: 71%;
    padding-top: 0.2rem;
    padding-bottom: 0.2rem;
    color: grey;
  }

  .ability-label {
    justify-self: left;
    position: relative;
  }
  .ability-label::after {
    content: '';
    background-color: lightgrey;
    position: absolute;
    left: -1rem;
    width: 8rem;
    height: 1.8rem;
    z-index: -1;
  }

  .save-label {
    padding-left: 0.1rem;
    justify-self: left;
    align-self: start;
  }
  .learning-label {
    writing-mode: vertical-rl;
    text-orientation: mixed;
    font-size: 70%;
    justify-self: center;
    align-self: center;
    color: grey;
    text-align: center;
  }
  .ini-label {
    align-self: start;
    text-align: center;
  }

  .ability-circle {
    width: #{hs.circle_side};
    height: #{hs.circle_side};
    border-radius: #{hs.circle_side};
    border: #{hs.border_width} solid grey;
    background-color: white;
    z-index: 10;
    grid-row-end: span 2;
  }

  .save-circle {
    width: #{hs.circle_side};
    height: #{hs.circle_side};
    border-radius: #{hs.circle_side};
    border: #{hs.border_width} solid grey;
    background-color: white;
    z-index: 10;
    grid-row-end: span 2;
  }

  .sq {
    border-radius: 0;
    margin-top: 1px;
  }
  .sq::before {
    content: '+';
    display: inline-block;
    margin-top: 0.5rem;
    color: grey;
  }

  .line {
    grid-row-end: span 2;
  }
  .line::after {
    content: '';
    width: 1.4rem;
    height: #{hs.border_width};
    display: inline-block;
    background-color: grey;
  }
  .ldown::after {
    width: 4.2rem;
    transform-origin: left;
    transform: rotate(20deg);
  }
  .lup::after {
    width: 4.2rem;
    transform-origin: left;
    transform: rotate(-20deg);
  }
  .ldown35::after {
    width: 5.6rem;
    transform-origin: left;
    transform: rotate(35deg);
    background-color: grey;
  }
  .lup35::after {
    width: 5.6rem;
    transform-origin: left;
    transform: rotate(-35deg);
    background-color: grey;
  }
  .learning::after {
    width: 4.7rem;
    background-color: lightgrey;
  }
  .clgrey {
    border-color: lightgrey;
  }

  /* POINT GRID */

  .point-grid {
    display: grid;
    row-gap: 0.2rem;
  }

  .point-grid > * {
    justify-self: center;
  }

  .point-grid .info {
    align-self: end;
  }
  .point-grid .max {
    font-weight: bold;
  }

  .point-grid .hp img, .point-grid .cp img {
    height: 4.2rem;
  }
  .point-grid .ac img {
    height: 2.1rem;
  }

  .point-grid .ac.info {
    font-size: 70%;
    color: grey;
    align-self: start;
    margin-left: 0.2rem;
  }

  /* INFO GRID */

  .info-grid {
    display: grid;
    grid-template-columns: 60% auto;
  }

  .info-grid .field {
    font-size: 70%;
    color: grey;
    align-self: end;
    border-bottom: 1px solid grey;
    min-height: 1.2rem;
    max-height: 1.2rem;
  }

  .info-grid .picture {
    width: 100%;
    height: 100%;
    border: 1px solid grey;
  }

  /* CONFIGURATION GRID */

  .configuration-grid {
    display: grid;
  }
  .configuration-grid img {
    height: 3.5rem;
  }

  .conf-cell {
    align-self: end;
    justify-self: center;
  }

  .conf-cell.header2 {
    font-size: 60%;
    color: grey;
    text-align: center;
    align-self: center;
  }

  .conf-cell.vertical {
    writing-mode: vertical-lr;
    justify-self: stretch;
    align-self: stretch;
    background-color: lightgrey;
    text-orientation: mixed;
    text-align: center;
    padding-left: 0.5rem;
  }

  .conf-cell.damage img {
    transform: rotate(270deg);
  }

  .conf-cell .input {
    width: 3rem;
    display: inline-block;
    border-bottom: 1px solid grey;
    margin-bottom: 1.0rem;
  }

  .conf-cell.weapon .input {
    width: 7.0rem;
  }
  .conf-cell.range .input {
    width: 4.9rem;
  }

  /* SKILL GRID */

  .skill-grid {
    display: grid;
  }

  .skill-tag {
    font-size: 70pt;
    font-weight: bold;
    color: #d0d0d0;
    z-index: -1;
    align-self: end;
  }

  .skill-label {
    height: #{hs.box_height};
    margin-left: 0.2rem;
    font-size: 11pt;
  }
  .skill-label.italic {
    font-style: italic;
  }
  .skill-box {
    border: #{hs.box_border_width} solid grey;
    width: #{hs.box_width};
    height: #{hs.box_height};
    margin-bottom: 1px;
  }
  .skill-box.attack {
    border-color: black;
  }
  .skill-box::after {
    content: '+';
    color: grey;
    display: inline-block;
  }
  .skill-note {
    font-size: 11pt;
    color: grey;
    align-self: end;
    justify-self: left;
  }

  .weapon-cat {
    writing-mode: vertical-rl;
    text-orientation: mixed;
    justify-self: stretch;
    align-self: stretch;
    background-color: lightgrey;
    padding: 0;
    margin-right: 0.2rem;
    padding-right: 0.2rem;
    text-align: center;
  }

  /* misc */

  .bold { font-weight: bold; }

}.strip

puts %{
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8" />
  <title>character sheet</title>
  <link href="normalize-8.0.1.css" rel="stylesheet" type="text/css" />
  <!-- meta name="viewport" content="width=device-width, initial-scale=1" /-->
  <style>
    #{style}
  </style>
</head>
<body>
}

def split_id_and_classes(s)

  id = nil
  cs = []

  ss = StringScanner.new(s || ''); while ! ss.eos?
    m = ss.scan(/[.#][-_a-zA-Z0-9]+/); break unless m
    m0 = m[0, 1 ]; m1 = m[1..-1]
    if m0 == '#'
      id = m1
    else
      cs << m1
    end
  end

  OpenStruct.new(id: id, classes: cs)
end

def set_origin(x, y); $x = x; $y = y; end; set_origin(0, 0)

def make(tag_name, *rest, &block)

  idc = rest.find { |e| e.is_a?(String) && e.match?(/^[.#]/) }; rest.delete(idc)
  x, y, xspan, yspan = rest.select { |e| e.is_a?(Integer) }
  text = rest.find { |e| e.is_a?(String) }
  opts = rest.find { |e| e.is_a?(Hash) }

  idc = split_id_and_classes(idc || '')

  styles = []
    #
  styles << "grid-column-start: #{$x + x}" if x
  styles << "grid-row-start: #{$y + y}" if y
  styles << "grid-column-end: span #{xspan}" if xspan
  styles << "grid-row-end: span #{yspan}" if yspan
    #
  style = opts && opts.delete(:style)
  styles << style if style

  print "<#{tag_name}"
  print " id=\"#{idc.id}\"" if idc.id
  print " class=\"#{idc.classes.join(' ')}\"" if idc.classes.any?
  print " style=\"#{styles.join('; ')}\"" if styles.any?
  opts.each { |k, v| print " #{k}=#{v.to_s.inspect}" } if opts
  print ">"
  print text if text
  block.call if block
  puts "</#{tag_name}>"
end

def div(*args, &block); make(:div, *args, &block); end
def span(*args, &block); make(:span, *args, &block); end
def img(*args); make(:img, *args); end

puts %{
<div class="page">
  <div class="page-grid">
}

div('.left.subgrid', 1, 1) do

  div('.vlabel', 1, 1, 'Abilities');
  div('.vlabel', 1, 2, 'Skills');

  div('.ability-grid', 2, 1) do

    div('.save-circle.sq', 1, 8)
    div('.ini-label', 1, 10, 1, 2, 'INI<br/>tiative')

    div('.line.lup35', 2, 8)
    div('.line.ldown35', 2, 8)

    div('.a-label', 3, 1, '3d6')
    div('.a-label', 5, 1, 'Ability TC')
    div('.a-label', 7, 1, 'Save TC')

    div('.a-label', 1, 14, 'mean-')
    div('.a-label', 3, 14, 'Abi')
    div('.a-label', 5, 14, '21 - Abi')
    div('.a-label', 7, 14, 'mean+')

    div('.ability-circle.clgrey.sq', 3, 2)
    div('.ability-circle.clgrey.sq', 3, 4)
    div('.ability-circle.clgrey.sq', 3, 6)
    div('.ability-circle.clgrey.sq', 3, 8)
    div('.ability-circle.clgrey.sq', 3, 10)
    div('.ability-circle.clgrey.sq', 3, 12)

    div('.ability-label', 4, 2, 1, 2, '<b>STR</b>ength')
    div('.ability-label', 4, 4, 1, 2, '<b>CON</b>stitution')
    div('.ability-label', 4, 6, 1, 2, '<b>DEX</b>terity')
    div('.ability-label', 4, 8, 1, 2, '<b>INT</b>elligence')
    div('.ability-label', 4, 10, 1, 2, '<b>WIS</b>dom')
    div('.ability-label', 4, 12, 1, 2, '<b>CHA</b>risma')

    div('.ability-circle', 5, 2)
    div('.ability-circle', 5, 4)
    div('.ability-circle', 5, 6)
    div('.ability-circle', 5, 8)
    div('.ability-circle', 5, 10)
    div('.ability-circle', 5, 12)

    div('.line.ldown', 6, 2)
    div('.line.lup', 6, 4)
    div('.line.ldown', 6, 6)
    div('.line.lup', 6, 8)
    div('.line.ldown.learning', 6, 8, 2)
    div('.line.lup.learning', 6, 10, 2)
    div('.line.ldown', 6, 10)
    div('.line.lup', 6, 12)

    div('.save-circle', 7, 3)
    div('.save-circle', 7, 7)
    div('.save-circle.clgrey', 8, 9)
    div('.save-circle', 7, 11)

    div('.save-label', 8, 3, 1, 2, 'Physical')
    div('.save-label', 8, 7, 1, 2, 'Evasion')
    div('.save-label', 8, 11, 1, 2, 'Mental', style: 'align-self: end')

    div('.learning-label', 9, 9, 1, 2, 'learning<br/>TC')
  end

  div('.skill-grid', 2, 2) do

    div('.skill-tag', 1, 1, 2, 5, 'G')

    j = 0
    %w{
      Administer Connect Convince #Craft Exert Heal Hunt #Know Lead Notice
      Perform Pray Read Ride Sail Sneak Survive Swim Trade
    }
      .select { |k|
        k[0, 1] != '#' }
      .each_with_index do |k, i|
        next if k == 'skip'
        div('.skill-label', 1, 1 + i, k)
        div('.skill-box', 2, 1 + i)
        j = 1 + i
      end

    [
      'skills start at +0',
      'but default to -2',
      'max is char level + 1',
      '1d20 + skill ≥ abi TC'
    ]
      .each_with_index { |s, i| div('.skill-note', s, 3, 8 + i, 2, 1) }

    %w{
      Work
      #---
      _Craft
      _Know
      _
      _
      _
      ---
      ---
      ---
      ---
      ---
      ---
      ---
      ---
      _Cast
      _Feel
      _Soak
    }
      .select { |k|
        k[0, 1] != '#' }
      .each_with_index do |k, i|
        next if k == '---'
        it, k = k.match(/^_(.+)$/) ? [ true, $1 ] : [ false, k ]
        k = (k == '_') ? '_________' : k
        div('.skill-label' + (it ? '.italic' : ''), 3, 1 + i, k)
        div('.skill-box', 4, 1 + i)
      end

    div('.skill-tag', 3, 13, 2, 5, 'M')

    %w{
      _Bows _Crossbows _Slings _Javelins Throw
      ---
      #Slash _Axes* _Maces* _Staffs* _Spears* _Swords* _Knives*
      Punch Grapple
      ---
      #Parry
      Shield
      Dodge
    }
      .select { |k|
        k[0, 1] != '#' }
      .each_with_index do |k, i|
        next if k == '---'
        it, k = k[0, 1] == '_' ? [ true, k[1..-1] ] : [ false, k ]
        at, k = k[-1, 1] == '*' ? [ true, k[0..-2] ] : [ false, k ]
        div('.skill-label' + (it ? '.italic' : ''), 6, 1 + i, k)
        div('.skill-box' + (at ? '.attack' : ''), 7, 1 + i)
      end
    div('.skill-tag', 6, 1, 2, 5, 'F')

    div('.weapon-cat', 5, 1, 1, 5, 'ranged')
    div('.weapon-cat', 5, 7, 1, 8, 'melee')
  end
end

div('.right.subgrid', 2, 1) do

  div('.point-grid', 2, 1) do

    div('.hp.info.max', 1, 1, 2, 1, 'HP max')
    div('.hp', 1, 2, 2, 1) { img(src: 'heart.svg') }
    div('.cp.info.max', 1, 3, 2, 1, 'CP max')
    div('.cp', 1, 4, 2, 1) { img(src: 'drop.svg') }
    div('.ac.info', 1, 5, 2, 1, 'AC base')
    div('.ac', 1, 6) { img(src: 'shield-grey.svg') }
    div('.ac.info', 2, 6, [
      '10 <i>no armor</i>',
      '12 gambeson',
      '14 mail shirt',
      '16 mail hauberk' ].join('<br/>'))
  end

  div('.info-grid', 4, 1) do

    div('.picture', 2, 1, 1, 7)

    j = -1
    [ 'name', '', 'player', 'origin', 'level', 'class', 'background' ]
      .each_with_index do |k, i|
        j = i
        k = '&nbsp;' if k == ''
        div('.field', k, 1, 1 + i)
      end
    j = j + 2
    [ 'appearance', '', 'traits', '', '', '', 'scars', '' ]
      .each_with_index do |k, i|
        k = '&nbsp;' if k == ''
        div('.field', k, 1, j + i, 2, 1)
      end
  end

  div('.configuration-grid', 2, 2, 3, 1) do

    div('.conf-cell.header', 1, 1, 'AC')
    div('.conf-cell.header', 2, 1, 'Weapon')
    div('.conf-cell.header', 3, 1, 'Range')
    div('.conf-cell.header', 4, 1, 'Attack')
    div('.conf-cell.header', 5, 1, 'Damage')

    div('.conf-cell.header2', 1, 2, 'base AC + best of<br/>Dodge, Shield or <i>F Skill</i>')
    #div('.conf-cell.header2', 2, 2, '')
    div('.conf-cell.header2', 3, 2, 'ft / m / sq')
    div('.conf-cell.header2', 4, 2, 'F Skill')
    div('.conf-cell.header2', 5, 2, 'Dice<br/>+ F Skill if melee')

    div('.conf-cell.header2', 1, 3, 'no shield | shield')

    4.times do |y|
      y = 4 + y
      div('.conf-cell.ac', 1, y) do
        img('.ac', src: 'shield-lightgrey.svg')
        img('.ac', src: 'shield-grey.svg')
      end
      div('.conf-cell.weapon', 2, y) { span('.input', '') }
      div('.conf-cell.range', 3, y) { span('.input', '') }
      div('.conf-cell.attack', 4, y) { img('.atk', src: 'cross.svg') }
      div('.conf-cell.damage', 5, y) { img('.uhp', src: 'heart.svg') }
    end
  end

  div('.vlabel', 1, 1, 'Hit & Cast')
  div('.vlabel', 3, 1, 'Info')
  div('.vlabel', 1, 2, 'Configurations')
end

puts %{
  </div> <!-- .page-grid -->
</div> <!-- .page -->
}

puts %{
</body>
</html>
}

