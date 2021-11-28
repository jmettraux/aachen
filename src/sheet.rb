
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
  box_border_width: '0.14rem',
  box_width: '2.1rem',
  box_height: '1.4rem',
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
    grid-template-columns: 1fr 1fr 1fr;
    /*
    grid-template-rows: 1fr 1fr;
    */
    gap: 2rem 1rem;
  }

  .ability-grid {
    display: grid;
    width: 100%;
    height: 100%;
    place-items: center;
    grid-template-columns:
      #{hs.cs} 0.7rem #{hs.cs} 8.4rem #{hs.cs} 0.7rem #{hs.cs} auto;
    /*
    grid-template-rows: 1.4rem 1.4rem 1.4rem 1.4rem 1.4rem 1.4rem;
    */
    grid-column: 1;
    grid-row: 1;
  }

  .a-label {
    font-size: 71%;
    padding-bottom: 0.2rem;
    color: grey;
  }
  .ability-label {
    grid-row-end: span 2;
    justify-self: left;
    position: relative;
  }
  .save-label {
    padding-left: 0.1rem;
    /*grid-row-end: span 2;*/
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
  }
  .ini-label {
    grid-row-end: span 2;
    align-self: start;
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
    margin-top: 0.1rem;
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
    background-color: lightgrey;
  }
  .lup35::after {
    width: 5.6rem;
    transform-origin: left;
    transform: rotate(-35deg);
    background-color: lightgrey;
  }
  .learning::after {
    width: 4.7rem;
    background-color: lightgrey;
  }
  .clgrey {
    border-color: lightgrey;
  }
  .bggrey {
    background-color: lightgrey;
  }

  .ability-label::after {
    content: '';
    background-color: lightgrey;
    position: absolute;
    left: -1rem;
    width: 11rem;
    height: 1.7rem;
    z-index: -1;
  }

  /* HP GRID */

  .hp-grid {
    display: block;
    grid-column: 2; grid-row: 1;
  }

  /* INFO GRID */

  .info-grid {
    display: grid;
    grid-column: 3; grid-row: 1;
  }

  /* GEAR GRID */

  .gear-grid {
    display: block;
    grid-column: 3; grid-row: 2;
  }
  .gear-label {
  }
  .gear-line {
    width: 100%;
    height: 1.4rem;
    border-bottom: 1px solid grey;
  }

  /* SKILL GRID */

  .skill-grid {
    display: grid;
    grid-column: 1 / span 2; grid-row: 2;
  }

  .skill-label {
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

  .ac {
    width: 2.1rem;
    grid-row-end: span 2;
    justify-self: center;
  }
  .ac-label {
    grid-column-end: span 2;
  }
  .ac-label.base {
  }
  .ac-label.left {
    justify-self: right;
  }

  .ac.big {
    justify-self: left;
  }
  .ac.big img {
    width: 3.8rem;
  }
  .ac.big.grey {
    opacity: 0.4;
  }
  .ac-title {
    font-weight: bold;
  }

  .armors {
    font-size: 12pt;
    color: grey;
  }
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
def img(*args); make(:img, *args); end

puts %{
<div class="page">
  <div class="page-grid">
}

div('.ability-grid') do

  #div('.ini-label.top', 1, 7, '1d20+')
  div('.save-circle.sq', 1, 8)
  div('.ini-label', 1, 10, 'INI')

  div('.line.lup35', 2, 8)
  div('.line.ldown35', 2, 8)

  div('.a-label', 3, 1, '3d6')
  div('.a-label', 4, 1, '21-x')
  div('.a-label', 5, 1, 'Ability TC')
  div('.a-label', 7, 1, 'Save TC')

  div('.ability-circle.clgrey.sq', 3, 2)
  div('.ability-circle.clgrey.sq', 3, 4)
  div('.ability-circle.clgrey.sq', 3, 6)
  div('.ability-circle.clgrey.sq', 3, 8)
  div('.ability-circle.clgrey.sq', 3, 10)
  div('.ability-circle.clgrey.sq', 3, 12)

  div('.ability-label.bggrey', 4, 2, '<b>STR</b>ength')
  div('.ability-label', 4, 4, '<b>CON</b>stitution')
  div('.ability-label.bggrey', 4, 6, '<b>DEX</b>terity')
  div('.ability-label', 4, 8, '<b>INT</b>elligence')
  div('.ability-label.bggrey', 4, 10, '<b>WIS</b>dom')
  div('.ability-label', 4, 12, '<b>CHA</b>risma')

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

  div('.save-label', 8, 3, 'Physical')
  div('.save-label', 8, 7, 'Evasion')
  div('.save-label', 8, 11, 1, 2, 'Mental', style: 'align-self: end')

  div('.learning-label', 9, 9, 1, 2, 'learning')
end

div('.hp-grid') do

  img('.heart', src: 'heart.svg', style: 'justify-self: center;')
  img('.cross', src: 'cross.svg', style: 'justify-self: center;')
end

div('.info-grid') do

  puts "INFO"
end

div('.skill-grid') do

  %w{
    Administer Connect Convince #Craft Exert Heal Hunt #Know Lead Notice
    Perform Pray Read Ride
  }
    .select { |k|
      k[0, 1] != '#' }
    .each_with_index do |k, i|
      next if k == 'skip'
      div('.skill-label', 1, 1 + i, k)
      div('.skill-box', 2, 1 + i)
    end
  %w{
    Sail Sneak Survive Swim Trade Work
    #---
    Craft_
    Craft_
    Craft_
    Know_
    Know_
    Know_
  }
    .select { |k|
      k[0, 1] != '#' }
    .each_with_index do |k, i|
      next if k == '---'
      m = k.match(/^([^_]+)_/); k = "#{m[1]} _____" if m
      div('.skill-label', 3, 1 + i, k)
      div('.skill-box', 4, 1 + i)
    end

  %w{
    _Bows _Crossbows _Slings
    ---
    #Slash _Axes* _Maces* _Staffs* _Spears* _Swords*
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

  div('.weapon-cat', 5, 1, 1, 3, 'ranged')
  div('.weapon-cat', 5, 5, 1, 5, 'melee')

  armor =
    '<div class="armors">' +
    [ '8 <i>no armor</i>',
      '10 gambeson',
      '12 mail shirt',
      '14 mail hauberk'
        ].join('<br/>') +
    '</div>'


  div('.ac', 8, 1) { img('.ac', src: 'shield.svg') }
  div('.ac-label.base', 9, 1, 2, 3, 'base AC<br/>' + armor)

  ac =
    'base AC + best of<br/>' +
    '&nbsp;&nbsp;<i>Dodge</i>, <i>Shield</i>, or Weapon'

  div('.ac.big.grey', 8, 5, 2, 5) { img('.ac', src: 'shield.svg') }
  div('.ac-label', 10, 5, 1, 5) do
    div('.ac-title', 'min AC')
    div('.ac-detail', 'base AC + <i>Dodge</i>')
  end

  div('.ac.big', 8, 9, 2, 5) { img('.ac', src: 'shield.svg') }
  div('.ac-label', 10, 9, 1, 5) do
    div('.ac-title', 'AC')
    div('.ac-detail', ac)
  end
end

div('.gear-grid') do

  div('.gear-label', 'Gear')
  11.times { div('.gear-line') }
end

#puts %{
#  <img src="shield.svg" style="width: 4.2rem;"/>
#  <img src="heart.svg" style="width: 4.2rem;"/>
#}

puts %{
  </div> <!-- .page-grid -->
</div> <!-- .page -->
}

puts %{
</body>
</html>
}
