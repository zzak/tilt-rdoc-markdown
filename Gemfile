source 'https://rubygems.org'

gemspec

dep = case ENV['tilt']
      when 'stable', nil then nil
      when /(\d+\.)+\d+/ then "~> " + ENV['tilt'].sub("#{lib}-", '')
      else {:git => 'git://github.com/rtomayko/tilt.git', :branch => dep}
      end
gem 'tilt', dep
