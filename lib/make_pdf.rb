
def make_pdf

  h = {}
  h[:in] = "out/html/#{CONFIG[:NAME]}.html"
  h[:out] = "out/html/#{CONFIG[:NAME]}.pdf"
  h[:stapled_out] = "out/html/#{CONFIG[:NAME]}.stapled.pdf"

  make_chrome_pdf(h)
  make_stapled_pdf(h)
end

def make_chrome_pdf(h)

  cmd =
    h.inject(CONFIG[:to_pdf]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }

  puts(cmd)
  system(cmd)
end

def make_stapled_pdf(h)

  h = h.dup
  h[:in] = h[:out]
  h[:out] = h[:stapled_out]

  cmd =
    h.inject(CONFIG[:pdfinfo]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }
  puts(cmd)
  m = `#{cmd}`.match(/Pages:\s+(\d+)/)
  pcount = m[1].to_i
  p pcount
  p array_pages(pcount)
  h[:pages] = array_pages(pcount).collect(&:to_s).join(',')

  cmd =
    h.inject(CONFIG[:to_stapled_pdf]) { |s, (k, v)| s.gsub(/\$\{#{k}\}/, v) }

  puts(cmd)
  system(cmd)
end

def array_pages(count)

  middle = (count.to_f / 2).ceil

  a = []; (1..count)
    .each do |page|
      if page <= middle
        a << [ page, nil ]
      else
        a[-(page - middle)][1] = page
      end
    end

  a.flatten
end

