
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
      f.flush # yes, do flush
    end
  end

  out = "out/html/#{CONFIG[:NAME_]}.html"
  cha = nil

  echo(out, load_part('lib/partials/head.html'))

  Dir['out/tmp/*.md'].sort.each_with_index do |path, i|

    m = path.match(/\/([a-z]{3})(\d+)__(.+)\.md$/)
    next unless m

    t = m[3].gsub(/_/, ' ')
    h = { PATH: path, PAGE: 1 + i, TITLE: t, EVEN: i % 2 == 1 ? :even : :odd }

    tmp = "out/tmp/#{m[1]}#{m[2]}__#{m[3]}.1.md"
    tmp2 = "out/tmp/#{m[1]}#{m[2]}__#{m[3]}.2.html"

    echo(out, load_part('lib/partials/pre_chapter.html', h)) if m[2] == '0'
    echo(out, load_part('lib/partials/pre_page.html', h))

    echo(tmp, load_part(path, h), 'wb')

    cmd = { in: tmp, out: tmp2 }
      .inject(CONFIG[:tohtml]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }
    puts(cmd); system(cmd)

    #cmd = "cat #{tmp2} >> #{out}"
    #puts(cmd); system(cmd)
    rework_html(tmp2, out)

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

def rework_html(src, tgt)

  s = File.read(src)
    .gsub!(/ id="([^"])+"/) { |x|
      x.downcase.gsub(/-/, '_').gsub(/%20/, '_') }

  echo(tgt, s)
end

