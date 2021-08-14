
def make_html

  pages = Dir['src/*.md']
    .sort
    .select { |path| File.basename(path).match?(/^([a-z]{3})__(.+)\.md$/) }

  pages.each do |path|
    m = File.basename(path).match(/^([a-z]{3})__(.+)\.md$/)
    code = m[1]
    rest = m[2]
    off = 0
    f = nil
    File.readlines(path).each do |l|
      f ||= File.open("out/tmp/#{code}#{off}__#{rest}.md", 'wb')
      if l.match?(/^[ \t]*<!--[ \t]*(PAGE[ \t]+)?BREAK[ \t]*-->\s*$/)
        f.close if f
        f = nil
        off = off + 1
        next
      end
      f.write(l)
    end
  end

  tmp = 'out/tmp/t.md'
  out = "out/html/#{CONFIG[:NAME_]}.html"

  echo(out, load_part('lib/partials/head.html'))

  Dir['out/tmp/*__*.md'].sort.each_with_index do |path, i|

    t = path.match(/__(.+)\.md$/)[1].gsub(/_/, ' ') rescue nil
    h = { PATH: path, PAGE: 1 + i, TITLE: t, EVEN: i % 2 == 1 ? :even : :odd }

    echo(out, load_part('lib/partials/pre_page.html', h))

    echo(tmp, load_part(path, h), 'wb')
    cmd = { in: tmp, out: out }
      .inject(CONFIG[:tohtml]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }
    puts(cmd)
    system(cmd)

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

