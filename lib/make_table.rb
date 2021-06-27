

# ls src/*.md | sort | xargs grep "^#"
#
def make_table

  Dir['src/*.md'].each do |path|

    puts '  ' + path

    File.readlines(path).each do |line|
      m = line.match(/^(#+)/)
      puts '   ' + (' ' * m[1].length) + line if m
    end
  end
end

