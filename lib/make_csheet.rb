
#
# make_csheet.rb


def make_csheet

  system(
    "convert out/html/csheet.jpg " +
    "-trim out/html/csheet_trimmed.jpg")

  geom =
    `identify -verbose out/html/csheet_trimmed.jpg | grep Geometry`
  m = geom.match(/ (\d+)x(\d+)/)
  w = m[1].to_i
  h = m[2].to_i

  system(
    "convert out/html/csheet_trimmed.jpg " +
    "-crop #{w / 2}x#{h}+0+0 -trim out/html/csheet_left.jpg")
  system(
    "convert out/html/csheet_trimmed.jpg " +
    "-crop #{w / 2}x#{h}+#{w / 2}+0 -trim out/html/csheet_right.jpg")

  system(
    "convert out/html/csheet_trimmed.jpg " +
    "-crop #{w / 2}x#{h/2}+0+0 -trim out/html/csheet_abilities.jpg")
end

