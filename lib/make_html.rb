
WORDS_TO_INDEX = %w[
  combat
  initiative
  reaction
  save
  shooting
  skill skills
  spell
  morale
    ].freeze

def make_html

  pages = Dir['src/*.md']
    .sort
    .select { |path| File.basename(path).match?(/^([a-z]{3})__(.+)\.md$/) }

  out = "out/tmp/__#{CONFIG[:NAME_]}.md"

  File.open(out, 'wb') do |f|
    pages.each_with_index do |path, i|
      s = File.read(path)
      t = s.match(/\#{1,2}[\t ]+([^\n]+)/)[1].downcase.gsub(/[^a-z]+/, '_')
      if i > 0
        f.write("<!-- PAGE BREAK #{t} -->") \
          unless s.match?(/\s*<!--[\t ]*(PAGE[\t ]+)?UNBREAK[\t ]*-->/)
      end
      f.write(s)
    end
  end

  index = {}
  table = []
    #
  do_index = lambda { |page, s, heading=false|
    s.split(/\W+/).each do |w|
      w = w.downcase.gsub(/_+/, '')
      (index[w] ||= []) << page if WORDS_TO_INDEX.include?(w)
    end }

  page = 1
  f = File.open("out/tmp/p%03d__%s.md" % [ page, CONFIG[:NAME_] ], 'wb')
    #
  File.readlines(out).each do |l|
    if m = l.strip.match(/^<!--[\t ]*(PAGE[\t ]+)?BREAK[\t ]+(.+)-->/)
      f.close
      page = page + 1
      f = File.open("out/tmp/p%03d__%s.md" % [ page, m[2].strip ], 'wb')
    else
      if m = l.match(/^(\#{1,2}) (.+)$/)
        table << [ m[2], m[1], page ]
        do_index[page, m[2], :heading]
      else
        do_index[page, l]
      end
      f.write(l)
    end
  end
  f.close

  index.each { |_, v| v.uniq! }
#puts "v" * 80
#pp index
#pp table
#puts "^" * 80

  out = "out/html/#{CONFIG[:NAME_]}.html"
  cha = nil

  echo(out, load_part('lib/partials/head.html'))

  Dir['out/tmp/*.md'].sort.each_with_index do |path, i|

    m = path.match(/\/p(\d{3})__(.+)\.md$/)
    next unless m

    i = m[1].to_i
    t = m[2].gsub(/_/, ' ')
      #
    h = { PATH: path, PAGE: i, TITLE: t, EVEN: i % 2 == 0 ? :even : :odd }

    tmp = "out/tmp/pd#{m[1]}__#{m[2]}.md"
    tmp2 = "out/tmp/pht#{m[1]}__#{m[2]}.html"

    echo(out, load_part('lib/partials/pre_chapter.html', h)) if m[2] == '0'
    echo(out, load_part('lib/partials/pre_page.html', h))

    echo(tmp, rework_md(load_part(path, h)), 'wb')

    cmd = { in: tmp, out: tmp2 }
      .inject(CONFIG[:tohtml]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }
    puts(cmd); system(cmd)

    echo(out, rework_html(File.read(tmp2)))

    echo(out, load_part('lib/partials/post_page.html', h))

    echo(out, load_part('lib/partials/post_chapter.html', h)) if m[1] != cha
    cha = m[1]
  end

  echo(out, load_part('lib/partials/foot.html'))
end

def echo(path, s, mode='ab')

  File.open(path, mode) { |f| f.write(s) }
end

def load_part(path, h={})

  s = File.read(path)

  CONFIG.merge(h)
    .each { |k, v|
      k = k.to_s; s.gsub!(/\$\{#{k}\}/, v.to_s) if k.match(/^[A-Z_]+$/) }

  s
end


#
# rework_html()

def rework_md(s)
  #
  # currently: lowdown-0.8.3
  #
  # at some point, lowdown will deal with these reworks...

  s = rework_md_table_id_and_class(s)
  s = rework_md_headings(s)

  s
end

def rework_md_headings(s)

  # md:   # AACHEN {#foo .bar.baz}
  # -->
  # html: <h1 id="foo" class="bar baz">AACHEN</a>

  s
    .gsub(/^(\#{1,4})\s+(.+)\s+(\{[^}]+\})\s*$/) {

      h = "h#{$1.length}"
      a = $3[1..-2].split
      i = (
        a.find { |e| e.start_with?('#') } ||
        "X#{$2.strip.downcase.gsub(/\s+/, '_')}"
          )[1..-1]
      c = a.find { |e| e.start_with?('.') }
      c = c && c.split('.').join(' ').strip
      c = c || ''

      "<#{h} id=\"#{i}\" class=\"#{c}\">#{$2}</#{h}>" }
end

def rework_md_table_id_and_class(s)

  s
    .gsub(/^(|.+|)[\t ]*\{([^}]+)\}[\t ]*$/) {

      "<!--#{$2}-->\n#{$1}" }
end


#
# rework_html()

def rework_html(s)

  s = rework_html_id(s)
  s = rework_html_table_id_class(s)

  s
end

def rework_html_id(s)

  s
    .gsub(/ id="([^"])+"/) { |x|

      x.downcase.gsub(/-/, '_').gsub(/%20/, '_') }
end

def rework_html_table_id_class(s)

  #   <!-- #table-id .bar.baz -->
  #   <table>
  # ==>
  #   <table id="table-id" class="bar baz">

  s
    .gsub(/<!--(.+)-->[\t ]*\n*<table/) {

      atts = ''
      a = $1.strip.split
      i = a.find { |e| e.start_with?('#') }
      atts += " id=\"#{i[1..-1]}\"" if i
      c = a.find { |e| e.start_with?('.') }
      atts += " class=\"#{c.split('.').join(' ').strip}\"" if c

      "<table#{atts} " }
end

