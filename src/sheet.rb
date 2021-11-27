
require 'ostruct'
require 'strscan'


hs = OpenStruct.new(
  page_width: '210mm', # A4
  page_height: '297mm', # A4
  #page_width: 215.9mm, # US Letter
  #page_height: 279.4mm, # US Letter
  size_a: '14pt',
  mul_a: '1.15',
  title_face: 'trajan-pro-3, serif',
  main_face: 'minion-pro, serif',
  sans_face: 'ff-scala-sans-pro, sans-serif',
  circle_side: '3.5rem',
  border_width: '0.4rem',
)
hs.cs = hs.circle_side

style = %{
  /*
  @import url('https://fonts.googleapis.com/css2?family=EB+Garamond:ital,wght@0,400;0,500;0,600;0,700;0,800;1,400;1,500;1,600;1,700;1,800&display=swap');
  @import url('https://fonts.googleapis.com/css2?family=Crimson+Text:ital,wght@0,400;0,600;0,700;1,400;1,600;1,700&display=swap');
  */
  @import url("https://use.typekit.net/aqv1anf.css");

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
    min-height: #{hs.page_height};

    /*padding: 4.23mm; / * Brother printable area.... */

    margin: 0;
  }

  .grid0 {
    display: grid;
    width: 100%;
    height: 100%;
    place-items: center;
    grid-template-columns:
      #{hs.cs} 2.8rem #{hs.cs} 8.4rem #{hs.cs} 2.8rem #{hs.cs};
    /*
    grid-template-rows: 1.4rem 1.4rem 1.4rem 1.4rem 1.4rem 1.4rem;
    */
  }

  .a-label {
    font-size: 110%;
    padding-bottom: 0.2rem;
    color: grey;
  }
  .ability-label {
    font-size: 140%;
    grid-row-end: span 2;
    justify-self: left;
    position: relative;
  }
  .save-label {
    padding-left: 0.1rem;
    font-size: 140%;
    grid-row-end: span 2;
    justify-self: left;
  }
  .learning-label {
    padding-left: 0.1rem;
    font-size: 140%;
    grid-row-end: span 2;
    justify-self: left;
    color: grey;
  }
  .ini-label {
    font-size: 140%;
    grid-row-end: span 2;
    align-self: start;
  }
  .ini-label.top {
    color: grey;
    font-size: 110%;
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
  .ldown30::after {
    width: 5.6rem;
    transform-origin: left;
    transform: rotate(35deg);
  }
  .lup30::after {
    width: 5.6rem;
    transform-origin: left;
    transform: rotate(-35deg);
  }
  .lgrey::after {
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

<div class="page">
  <div class="grid0">
}

def split_id_and_classes(s)

  id = nil
  cs = []

  ss = StringScanner.new(s); while ! ss.eos?
    m = ss.scan(/[.#][-_a-zA-Z0-9]+/); break unless m
    m0 = m[0, 1 ]; m1 = m[1..-1]
    if m0 == '#'
      id = m1
    else
      cs << m1
    end
  end

  { id: id, classes: cs }
end

def set_origin(x, y)
  $x = x
  $y = y
end
set_origin(0, 0)

def div(id_and_classes, *rest)

  h = split_id_and_classes(id_and_classes)
  x, y, yspan, xspan = rest.select { |e| e.is_a?(Integer) }
  text = rest.find { |e| e.is_a?(String) }

  styles = []
  styles << "grid-column-start: #{$x + x}" if x
  styles << "grid-row-start: #{$y + y}" if y
  styles << "grid-column-end: #{xspan}" if xspan
  styles << "grid-row-end: #{yspan}" if yspan

  print "<div"
  print " id=\"#{h[:id]}\"" if h[:id]
  print " class=\"#{h[:classes].join(' ')}\"" if h[:classes].any?
  print " style=\"#{styles.join('; ')}\"" if styles.any?
  print ">"
  print text  if text
  puts "</div>"
end

#set_origin(0, 1)

div('.ini-label.top', 1, 7, '1d20+')
div('.save-circle.sq', 1, 8)
div('.ini-label', 1, 10, 'INI')

div('.line.lup30', 2, 8)
div('.line.ldown30', 2, 8)

div('.a-label', 3, 1, '3d6')
div('.a-label', 5, 1, '21-x')
div('.a-label', 7, 1, 'saves')

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
div('.line.ldown.lgrey', 6, 8)
div('.line.lup.lgrey', 6, 10)
div('.line.ldown', 6, 10)
div('.line.lup', 6, 12)

div('.save-circle', 7, 3)
div('.save-circle', 7, 7)
div('.save-circle.clgrey', 7, 9)
div('.save-circle', 7, 11)

div('.save-label', 8, 3, 'Physical')
div('.save-label', 8, 7, 'Evasion')
div('.learning-label', 8, 9, 'Learning')
div('.save-label', 8, 11, 'Mental')

puts %{
  </div>
</div>
}

puts %{
<!--
<div class="page">
</div>
-->
}

puts %{
</body>
</html>
}

