Gem::Specification.new do |s|
  s.name        = "achiever"
  s.version     = "1.0.0"
  s.author      = "Scott Raio"
  s.email       = "scottraio@gmail.com"
  s.homepage    = "http://github.com/scottraio/achiever"
  s.summary     = "Simple gamification solution for Rails."
  s.description = "Simple gamification solution for Rails. Allows easy use to add gamification to any rails application."

  s.files        = Dir["{lib,spec}/**/*", "[A-Z]*", "init.rb"] - ["Gemfile.lock"]
  s.require_path = "lib"

  s.add_development_dependency 'rspec', '~> 2.6.0'
  s.add_development_dependency 'rails', '~> 3.2.0'
  s.add_development_dependency 'rr', '~> 0.10.11' # 1.0.0 has respond_to? issues: http://github.com/btakita/rr/issues/issue/43
  s.add_development_dependency 'supermodel', '~> 0.1.4'

  s.rubyforge_project = s.name
  s.required_rubygems_version = ">= 1.3.4"
end
