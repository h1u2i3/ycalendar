$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "ycalendar/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "ycalendar"
  s.version     = Ycalendar::VERSION
  s.authors     = ["imconfused"]
  s.email       = ["286390860@qq.com"]
  s.homepage    = "https://github.com/h1u2i3/ycalendar"
  s.summary     = "A simple calendar for rails."
  s.description = "Ycalendar can help your create simple calendar."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.0.0.beta3", "< 5.1"

  s.add_development_dependency "pg"
end
