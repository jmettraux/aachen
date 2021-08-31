
def make_ps

  h = {}

  h[:in] = "out/html/#{CONFIG[:NAME]}.pdf"
  h[:out] = "out/html/#{CONFIG[:NAME]}.0.ps"
  make(:to_ps, h)

  h[:in] = "out/html/#{CONFIG[:NAME]}.stapled.pdf"
  h[:out] = "out/html/#{CONFIG[:NAME]}.stapled.0.ps"
  make(:to_ps, h)

  h[:in] = "out/html/#{CONFIG[:NAME]}.0.ps"
  h[:out] = "out/html/#{CONFIG[:NAME]}.ps"
  make(:to_ps2, h)

  h[:in] = "out/html/#{CONFIG[:NAME]}.stapled.0.ps"
  h[:out] = "out/html/#{CONFIG[:NAME]}.stapled.ps"
  make(:to_ps2, h)
end

def make(cmd, h)

  c = h.inject(CONFIG[cmd]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }

  puts(c)
  system(c)
end

