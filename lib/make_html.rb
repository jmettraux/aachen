
def make_html

  pages = Dir['src/page_*.md']
    .inject([]) { |a, path|
      i = path.match(/\/page_(\d+)__.+\.md$/)[1].to_i rescue nil
      a[i] = path if i
      a }

  out = "out/html/#{CONFIG[:NAME_]}.html"

  echo(out, load_part('lib/partials/head.html'))

  pages.each_with_index do |path, i|

    t = path.match(/__(.+)\.md$/)[1].gsub(/_/, ' ') rescue nil
    h = { PATH: path, PAGE: i, TITLE: t, EVEN: i % 2 == 0 ? :even : :odd }

    echo(out, load_part('lib/partials/pre_page.html', h))

    if path

      tpath = "out/tmp/#{File.basename(path)}"
      echo(tpath, load_part(path, h), 'wb')

      cmd = { in: tpath, out: out }
        .inject(CONFIG[:tohtml]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }
      puts(cmd)
      system(cmd)

    else

      echo(out, '&nbsp;')
    end

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

