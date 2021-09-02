
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

  gitbra = (`git symbolic-ref --short HEAD` rescue 'no-git-branch')
  gitsha = (`git rev-parse HEAD` rescue 'no-git-sha')
  giturl = (`git ls-remote --get-url` rescue 'no-git-url')

  pages = Dir['src/*.md']
    .sort
    .select { |path| File.basename(path).match?(/^([a-z]{3})__(.+)\.md$/) }

  out = "out/tmp/__#{CONFIG[:NAME_]}.md"

  File.open(out, 'wb') do |f|
    pages.each_with_index do |path, i|
      s = File.read(path)
      t = path.match(/__(.+)\.md/)[1]
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

  system("touch out/tmp/p%03d__%s.md" % [ page + 1, 'blank' ]) \
    if page.odd?

  index.each { |_, v| v.uniq! }
#puts "v" * 80
#pp index
#pp table
#puts "^" * 80

  out = "out/html/#{CONFIG[:NAME_]}.html"
  cha = nil

  echo(out, load_part('lib/partials/head.html'))

  t0 = nil

  Dir['out/tmp/*.md'].sort.each_with_index do |path, i|

    m = path.match(/\/p(\d{3})__(.+)\.md$/)
    next unless m

    i = m[1].to_i
    t = m[2].gsub(/_/, ' ')
      #
    h = {
      GITBRA: gitbra, GITSHA: gitsha, GITURL: giturl,
      PATH: path, PAGE: i,
      TITLE: t, TITLE_: m[2],
      EVEN: i % 2 == 0 ? :even : :odd }

    tmp = "out/tmp/pd#{m[1]}__#{m[2]}.md"
    tmp2 = "out/tmp/pht#{m[1]}__#{m[2]}.html"

    echo(out, load_part('lib/partials/post_chapter.html', h)) if t0 && t != t0

    echo(out, load_part('lib/partials/pre_chapter.html', h)) if t != t0
    echo(out, load_part('lib/partials/pre_page.html', h))

    t0 = t

    echo(tmp, rework_md(load_part(path, h), h), 'wb')

    cmd = { in: tmp, out: tmp2 }
      .inject(CONFIG[:to_html]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }
    puts(cmd); system(cmd)

    echo(out, rework_html(File.read(tmp2), h))

    echo(out, load_part('lib/partials/post_page.html', h))
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

def rework_md(s, h)
  #
  # currently: lowdown-0.8.3
  #
  # at some point, lowdown will deal with these reworks...
  #
  # 2021-09-02 No, it must be readable on Github,
  #            so favour <!--xxx--> annotations

  s = rework_md_clear(s, h)

  s
end

def rework_md_clear(s, h)
  #
  # <!-- clear -->
  # -->
  # <div class="clear"> </div>

  s.gsub(/<!--[ \t]*clear[ \t]*-->/, "<div class=\"clear\"> </div>\n")
end

#def rework_md_free_divs(s, h)
  #
  # <div#abc.def.ghi>
  # Hello world.
  # </div#abc.def.ghi>
  #   -->
  # <!-- div#abc.def.ghi -->
  # Hello world.
  # <!-- /div#abc.def.ghi -->
#end
#def rework_md_headings(s, h)
  #
  # md:   # AACHEN {#foo .bar.baz}
  # -->
  # html: <h1 id="foo" class="bar baz">AACHEN</a>
#end
#def rework_md_table_id_and_class(s, h)
#  s
#    .gsub(/^(\|.+\|)[\t ]*\{([^}]+)\}[\t ]*$/) {
#      "<!--#{$2}-->\n#{$1}" }
#end


#
# rework_html()

def rework_html(s, h)

  h1 = h.dup

  s = rework_html_id(s, h1)

  s = rework_html_id_class(s, h1)
  s = rework_html_dl(s, h1)
  s = rework_html_footnotes(s, h1)
  s = rework_html_free_divs(s, h1)

  h[:SIDENOTES] = rework_sidenotes(h1)

  s
end

def rework_sidenotes(h1)

  sn = h1[:SIDENOTES]

  return '' if sn.empty?

  sn.collect { |n| n.to_s }.join("\n")
end

def rework_html_id(s, h)

  s
    .gsub(/ id="([^"])+"/) { |x|

      x.downcase.gsub(/-/, '_').gsub(/%20/, '_') }
end

def rework_html_id_class(s, h)

  do_rework_html(s, h) do |e|
    rework_html_icas(e, h)
  end
end

def rework_html_icas(e, h)

  return unless e.is_a?(REXML::Element)

  icas = nil

  e.children.each do |c|

    if c.is_a?(REXML::Comment)
      icas = parse_id_classes_attributes(c)
      # TODO remove comment?
    elsif c.is_a?(REXML::Element)
      if icas
        icas.each do |k, v|
          c.add_attribute(k.to_s, v)
        end
        icas = nil
      end
    #else
    end
  end
end

def parse_id_classes_attributes(e)

  h = {}

  s = StringScanner.new(e.string)

  id = s.scan(/\s*#[-a-zA-Z0-9_]+/)
  h[:id] = id.strip[1..-1] if id

  cs = []; while c = s.scan(/\s*\.[-a-zA-Z0-9_]+/)
      cs << c.strip[1..-1]
    end
  h[:class] = cs.join(' ') if cs.any?

  while a = s.scan(/\s*[-a-zA-Z0-9_]+="[^"]+"/)
    k, v = a.split('=')
    h[k.strip] = v[1..-2]
  end

  h.empty? ? nil : h
end

def do_rework_html(s, h, &block)

  e = REXML::Document.new("<root>#{s}</root>").root

  block.call(e, h)

  #e.to_s.gsub(/<\/?root>/, '')
  e.to_s[6..-8]
end

def rework_html_dl(s, h)

  k = 'last-dd'

  do_rework_html(s, h) do |e|

    e.get_elements('//dt').each do |dte|
      pe = dte.previous_element
      pe.add_attribute('class', k) if pe && pe.name == 'dd'
    end
    e.get_elements('//dl').each do |dle|
      dle.get_elements('//dd').last.add_attribute('class', k)
    end
  end
end

def rework_html_free_divs(s, h)

  # <!-- <div#abc.def.ghi> -->
  # <p>Hello world.</p>
  # <!-- </div#abc.def.ghi> -->
  #   -->
  # <div#abc.def.ghi>
  #   <p>Hello world.</p>
  # </div>

  s
    .gsub(/^<!--[ \t]*<div([^>]+)>[ \t]*-->[ \t]*$/) {
      ic = []
      s = StringScanner.new($1)
      id = s.scan(/[ \t]*#[-a-zA-Z0-9_]+/)
      ic << "id=\"#{id.strip[1..-1]}\"" if id
      cs = []; while c = s.scan(/[ \t]*\.[-a-zA-Z0-9_]+/)
          cs << c.strip[1..-1]
        end
      ic << "class=\"#{cs.join(' ')}\"" if cs.any?
      "<div #{ic.join(' ')}>" }
    .gsub(/^<!--[ \t]*<\/div([^>]*)>[ \t]*-->[ \t]*$/) {
      "</div>\n" }

  #s
  #  .gsub(/^<!-- <div(#[-a-zA-Z0-9_]+)?(\.[-a-zA-Z0-9_]+)+> -->$/) { |x|
  #    id = $1 && $1[1..-1]
  #    cs = []; css = StringScanner.new(x); css.scan(/[^.]*/)
  #    while c = css.scan(/\.[a-zA-Z_-]+/); cs << c[1..-1]; end
  #    cs = cs.any? ? cs.join(' ') : nil
  #    "<div#{id ? " id=\"#{id}\"" : ''}#{cs ? " class=\"#{cs}\"" : ''}>" + x }
  #  .gsub(/^<!-- <\/div(#[-a-zA-Z0-9_]+)?(\.[-a-zA-Z0-9_]+)+> -->(<[^>]+>)$/) {
  #    "#{$3}\n</div><!-- </div#{$1}#{$2}> -->" }
end

def rework_html_footnotes(s, h)

  # <p>This the background list for a simple medieval setting.
  #   <sup id="fnref1"><a href="#fn1" rel="footnote">1</a></sup>
  # </p>

  # <div class="footnotes">
  # <hr/>
  # <ol>
  # <li id="fn1">
  # <p>One can roll, pick ... <a href="#fnref1" rev="footnote">&#8617;</a></p>
  # </li>
  # <li id="fn2">
  # <p>The setting or the ...<a href="#fnref2" rev="footnote">&#8617;</a></p>
  # </li>
  # </ol>
  # </div>

  h[:SIDENOTES] = []

  do_rework_html(s, h) do |e|

    ses =
      e.get_elements("//*[contains(@rel, 'footnote')]").collect(&:parent)
    fne =
      e.get_elements("//*[contains(@class, 'footnotes')]")[0]
    les =
      fne && fne.get_elements("//li[@id]")

    e.get_elements("//*[contains(@rev, 'footnote')]").each(&:remove)

    ses.each_with_index do |se, i|

      id = "note-#{h[:PAGE]}-#{i + 1}"

      ae = make_html_element(:span, { class: 'anchor', 'href': "##{id}" })
      ae.text = ''

      ne = make_html_element(:div, { id: id, class: 'note' })

      les[i].children
        .each { |lee|
          if lee.is_a?(REXML::Element)
            ne.add_element(lee)
          elsif lee.is_a?(REXML::Text)
            ne.text = (ne.text || '') + "\n" + lee.to_s
          end }

      h[:SIDENOTES] << ne

      se.parent.parent.insert_before(se.parent, ae)
      se.remove
    end

    fne.remove if fne
  end
    .gsub('&#160;', '') # remove rewind arrow...
end

def make_html_element(tag, atts)

  e = REXML::Element.new(tag.to_s)
  atts.each { |k, v| e.add_attribute(k.to_s, v) }

  e
end

