
start = 10
inc = 5
max = 250
ptk = 0.453592

puts '  | lb  | kg    |'
puts '  |----:|------:|'
  #
loop do
  puts "  | %3d | %#5.1f |" % [ start, start * ptk ]
  start += inc
  break if start > max
end

