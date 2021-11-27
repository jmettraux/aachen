
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
      auto auto #{hs.circle_side} 1.4rem #{hs.circle_side} 2.8rem #{hs.circle_side};
    /*
    grid-template-rows: 1.4rem 1.4rem 1.4rem 1.4rem 1.4rem 1.4rem;
    */
  }

  .ability-label {
    grid-column: 2;
    font-size: 140%;
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
  .lgrey::after {
    background-color: lightgrey;
  }
  .clgrey {
    border-color: lightgrey;
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

def div(id_and_classes, *rest)

  h = split_id_and_classes(id_and_classes)
  x, y, yspan, xspan = rest.select { |e| e.is_a?(Integer) }
  text = rest.find { |e| e.is_a?(String) }

  styles = []
  styles << "grid-column-start: #{x}" if x
  styles << "grid-row-start: #{y}" if y
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

div('.ability-label', 2, 1, '<b>STR</b>ength')
div('.ability-label', 2, 3, '<b>CON</b>stitution')
div('.ability-label', 2, 5, '<b>DEX</b>terity')
div('.ability-label', 2, 7, '<b>INT</b>elligence')
div('.ability-label', 2, 9, '<b>WIS</b>dom')
div('.ability-label', 2, 11, '<b>CHA</b>risma')

div('.ability-circle', 3, 1)
div('.ability-circle', 3, 3)
div('.ability-circle', 3, 5)
div('.ability-circle', 3, 7)
div('.ability-circle', 3, 9)
div('.ability-circle', 3, 11)

div('.line', 4, 1)
div('.line', 4, 3)
div('.line', 4, 5)
div('.line', 4, 7)
div('.line', 4, 9)
div('.line', 4, 11)

div('.ability-circle', 5, 1)
div('.ability-circle', 5, 3)
div('.ability-circle', 5, 5)
div('.ability-circle', 5, 7)
div('.ability-circle', 5, 9)
div('.ability-circle', 5, 11)

div('.line.ldown', 6, 1)
div('.line.lup', 6, 3)
div('.line.ldown', 6, 5)
div('.line.lup', 6, 7)
div('.line.ldown.lgrey', 6, 7)
div('.line.lup.lgrey', 6, 9)
div('.line.ldown', 6, 9)
div('.line.lup', 6, 11)

div('.save-circle', 7, 2)
div('.save-circle', 7, 6)
div('.save-circle.clgrey', 7, 8)
div('.save-circle', 7, 10)

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

