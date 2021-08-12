
def make_html

  out = "out/html/#{CONFIG[:NAME_]}.html"

  echo(out, load_part('lib/assets/head.html'))

  Dir['src/page_*.md'].sort.each_with_index do |path, i|
    h = { PATH: path, PAGE: i + 1 }
    echo(out, load_part('lib/assets/pre_page.html', h))
    tpath = "out/tmp/#{File.basename(path)}"
    echo(tpath, load_part(path, h), 'wb')
    system("lowdown #{tpath} >> #{out}")
    echo(out, load_part('lib/assets/post_page.html', h))
  end

  echo(out, load_part('lib/assets/foot.html'))
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

