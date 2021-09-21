
def make_ps

  h = {}

  # non-stapled

  h[:in] = "out/html/#{CONFIG[:NAME]}.pdf"
  h[:out] = "out/html/#{CONFIG[:NAME]}.ps"
  make(:to_ps, h)

  h[:in] = "out/html/#{CONFIG[:NAME]}.ps"
  h[:out] = "out/html/#{CONFIG[:NAME]}.2.ps"
  make(:to_ps2, h)

  h[:in] = "out/html/#{CONFIG[:NAME]}.2.ps"
  h[:out] = "out/html/#{CONFIG[:NAME]}.2.duplex.ps"
  make_duplex(h)

  # stapled

  h[:in] = "out/html/#{CONFIG[:NAME]}.stapled.pdf"
  h[:out] = "out/html/#{CONFIG[:NAME]}.stapled.ps"
  make(:to_ps, h)

  h[:in] = "out/html/#{CONFIG[:NAME]}.stapled.ps"
  h[:out] = "out/html/#{CONFIG[:NAME]}.stapled.2.ps"
  make(:to_ps2, h)

  h[:in] = "out/html/#{CONFIG[:NAME]}.stapled.2.ps"
  h[:out] = "out/html/#{CONFIG[:NAME]}.stapled.2.duplex.ps"
  make_duplex(h)

  # sample

  if ENV['SAMPLE_PAGES']

    h[:in] = "out/html/#{CONFIG[:NAME]}.sample.pdf"
    h[:out] = "out/html/#{CONFIG[:NAME]}.sample.ps"
    make(:to_ps, h)

    h[:in] = "out/html/#{CONFIG[:NAME]}.sample.ps"
    h[:out] = "out/html/#{CONFIG[:NAME]}.sample.2.ps"
    make(:to_ps2, h)

    h[:in] = "out/html/#{CONFIG[:NAME]}.sample.2.ps"
    h[:out] = "out/html/#{CONFIG[:NAME]}.sample.2.duplex.ps"
    make_duplex(h)

    h[:in] = "out/html/#{CONFIG[:NAME]}.sample.stapled.pdf"
    h[:out] = "out/html/#{CONFIG[:NAME]}.sample.stapled.ps"
    make(:to_ps, h)

    h[:in] = "out/html/#{CONFIG[:NAME]}.sample.stapled.ps"
    h[:out] = "out/html/#{CONFIG[:NAME]}.sample.stapled.2.ps"
    make(:to_ps2, h)

    h[:in] = "out/html/#{CONFIG[:NAME]}.sample.stapled.2.ps"
    h[:out] = "out/html/#{CONFIG[:NAME]}.sample.stapled.2.duplex.ps"
    make_duplex(h)
  end
end

def make(cmd, h)

  c = h.inject(CONFIG[cmd]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }

  puts(c)
  system(c)
end

def make_duplex(h)

  File.open(h[:out], 'wb') do |f|
    f.write("%!\n")
    f.write("<< /Duplex true /Tumble true >> setpagedevice\n")
    f.write(File.read(h[:in]))
  end
  puts ".. wrote Duplex #{h[:out]}"
end

