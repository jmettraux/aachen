
def make_pdf

  cmd = {
    in: "out/html/#{CONFIG[:NAME]}.html",
    out: "out/html/#{CONFIG[:NAME]}.pdf" }
      .inject(CONFIG[:topdf]) { |s, (k, v)|
        s.gsub(/\$\{#{k}\}/, v) }

  puts(cmd)
  system(cmd)
end

