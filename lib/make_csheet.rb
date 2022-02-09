
#
# make_csheet.rb


def do_make_csheet(suffix='')

  system(
    "convert out/html/csheet#{suffix}.jpg " +
    "-trim out/html/csheet_trimmed#{suffix}.jpg")

  geom =
    `identify -verbose out/html/csheet_trimmed#{suffix}.jpg | grep Geometry`
  m = geom.match(/ (\d+)x(\d+)/)
  w = m[1].to_i
  h = m[2].to_i

  system(
    "convert out/html/csheet_trimmed#{suffix}.jpg " +
    "-crop #{w / 2}x#{h}+0+0 -trim out/html/csheet_left#{suffix}.jpg")
  system(
    "convert out/html/csheet_trimmed#{suffix}.jpg " +
    "-crop #{w / 2}x#{h}+#{w / 2}+0 -trim out/html/csheet_right#{suffix}.jpg")

  system(
    "convert out/html/csheet_trimmed#{suffix}.jpg " +
    "-crop #{w / 2}x#{h/2}+0+0 -trim out/html/csheet_abilities#{suffix}.jpg")
end

def make_csheet

  do_make_csheet()
  do_make_csheet('_0')
end

