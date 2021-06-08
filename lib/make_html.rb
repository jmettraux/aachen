
class HtmlRender < Redcarpet::Render::HTML

  def initialize(opts)

    super

    @in_article = false
    @in_section = false
    @footnotes = {}
  end

  def header(title, level)

    a = []
    t = neutralize_name(title)

    if level == 1 && title.match(/^[A-Z .]+$/)
      a << "\n</section>" if @in_section; @in_section = false
      a << "\n</article>" if @in_article; @in_article = true
      a << "\n<article id=\"article-#{title.downcase.gsub(/[ .]/, '-')}\">"
      a << "<h#{level} id=\"#{t}\">#{title}</h#{level}>"
    elsif level == 1
      a << "\n</section>" if @in_section; @in_section = true
      a << "\n<section class=\"section-#{t.downcase}\">"
      a << "<h#{level} id=\"#{t}\">#{title}</h#{level}>"
    else
      level = 3 if level > 3
      i = level < 3 ? " id=\"#{t}\"" : ''
      a << "\n<section>" if ! @in_section; @in_section = true
      a << "<h#{level}#{i}>#{title}</h#{level}>"
    end

    a.join
  end

  def paragraph(text)

    return text if text.match(/<p class="subtitle"/)

    a = []

    a << "\n<section>\n" if ! @in_section; @in_section = true
    a << "<p>#{text}</p>\n"

    a.join
  end

  def doc_footer

    a = []

    a << "\n</section>" if @in_section
    a << "\n</article>" if @in_article

    a.join
  end

  def table(header, body)

    c = header.match?(/<th>STR<\/th>/) ? 'abilities' : nil

    a = []

    a << (c ? "<table class=\"#{c}\">\n" : "<table>\n")
    a << "<thead>#{header}</thead>\n"
    a << "<tbody>#{body}</tbody>\n"
    a << "</table>\n"

    a.join
  end

  def block_quote(quote)

    ls = quote.split("\n")

    if ls.last.match(/^<p>  (.+)<\/p>$/)
      "<div class=\"epigraph\">" +
      "<blockquote>#{ls[0..-2].join("\n")}" +
      "<footer>#{$1}</footer></blockquote>" +
      "</div>"
    else
      "<blockquote>#{quote}</blockquote>"
    end
  end

  def footnotes(content)

    nil
  end

  def footnote_ref(number)

    #"<label for=\"sn-#{number}\" class=\"margin-toggle sidenote-number\">" +
    "<label for=\"sn-#{number}\" class=\"margin-toggle\">" +
    "</label>" +
    "${FOOTNOTE-#{number}}"
  end

  def footnote_def(content, number)

    content = content.strip
    content = content[3..-5] if content.start_with?('<p>')

    @footnotes[number.to_s] =
      "<input type=\"checkbox\" id=\"sn-#{number}\" class=\"margin-toggle\"/>" +
      "<span class=\"sidenote\">#{content}</span>"

    nil
  end

  #def preprocess(full_doc)
  #end
  def postprocess(full_doc)
    full_doc.gsub(/\$\{FOOTNOTE-([^}]+)\}/) { @footnotes[$1] || '' }
  end
end

def make_html_head(title)

  s = File.read(File.join(__dir__, 'head.html'))
  s.sub!('$TITLE', title)

  s
end

def make_html_foot

  File.read(File.join(__dir__, 'foot.html'))
end

def do_make_html(title, content, out=$stdout)

#puts "-" * 80
#p title
#puts "-" * 80
  renderer =
    Redcarpet::Markdown.new(
      HtmlRender.new({}),
      tables: true, footnotes: true)

  out.puts make_html_head(title)
  out.puts renderer.render(content)
  out.puts make_html_foot
end

def make_html(path)

  fname = File.join('out', File.basename(path, '.md') + '.html')
  content = File.read(path)
  title = content.match(/^# ([^\n]+)/)[1] rescue 'TITLE'

  File.open(fname, 'wb') do |f|
    do_make_html(title, content, f)
  end
end

def make_htmls

  ARGV.select { |a| a.match(/^tmp\//) }.each do |path|
    make_html(path)
  end
end

