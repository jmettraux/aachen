
def make_html

  out = "out/html/#{NAME_}.html"

  echo(out, load_html_part('lib/assets/head.html'))

  Dir['src/page_*.md'].sort.each_with_index do |path, i|
    h = { path: path, page: i + 1 }
    echo(out, load_html_part('lib/assets/pre_page.html', h))
    system("lowdown #{path} >> #{out}")
    echo(out, load_html_part('lib/assets/post_page.html', h))
  end

  echo(out, load_html_part('lib/assets/foot.html'))
end

def echo(path, s)

  File.open(path, 'ab') { |f| f.write(s) }
end

def load_html_part(path, h={})

  s = File.read(path)

  h['NAME'] = NAME_
  h['TITLE'] = NAME_.capitalize

  h.each { |k, v| s.gsub!(/\$\{#{k.upcase}\}/, v.to_s) }

  s
end

