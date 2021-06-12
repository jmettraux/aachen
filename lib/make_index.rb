
def make_index

  Dir['out/tmp/*__*.md'] # FIXME __ vs _
    .sort
    .each do |path|
      fn = File.basename(path, '.md')
      a, b = fn.split('__')
      b = b
        .gsub(/_/, ' ')
        .split(/ |\_|\-/).map(&:capitalize).join(' ')
      puts "* [#{a} #{b}](#{fn}.html)"
    end
end

