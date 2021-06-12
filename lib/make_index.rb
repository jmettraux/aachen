
def make_index

  Dir['out/tmp/*.md'] # FIXME __ vs _
    .sort
    .each do |path|
      fn = File.basename(path, '.md')
      if m = fn.match(/^[a-z]{2}\d{2}(__?)(.+)$/)
        i = m[1].length > 1 ? '  ' : ''
        t = m[2].split(/ |\_|\-/).map(&:capitalize).join(' ')
        puts "#{i}* [#{t}](#{fn}.html)"
      end
    end
end

