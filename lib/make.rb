
#require 'yaml'
#require 'ostruct'


NAME_ = `git branch --show-current | sed -e "s/[^-_a-zA-Z0-9]/_/g"`.strip


Dir[File.join(__dir__, '*.rb')]
  .each do |pa|

    next if %w[ make.rb ].find { |e| pa.end_with?(e) }

    require(pa)
  end

def neutralize_name(s); s.gsub(/[^a-zA-Z0-9]/, '_'); end

