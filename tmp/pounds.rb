
start = 10
inc = 4
max = 242
ptk = 0.453592

puts '  | *4 | lb  | kg    | *6 |'
puts '  |---:|----:|------:|---:|'
  #
loop do
  s4 = start / 4; s4 = (s4 < 3 || s4 > 18) ? '  ' : '%2d' % s4
  s6 = start / 6; s6 = (s6 < 3 || s6 > 18) ? '  ' : '%2d' % s6
  puts "  | %s | %3d | %#5.1f | %s |" % [ s4, start, start * ptk, s6 ]
  start += inc
  break if start > max
end

