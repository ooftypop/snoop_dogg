$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "snoop_dogg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "snoop_dogg"
  s.version     = SnoopDogg::VERSION
  s.authors     = ["Kevin J. Storberg"]
  s.email       = ["kevin@storberg.net"]
  s.homepage    = "https://github.com/ooftypop/snoop_dogg"
  s.summary     = "A nicer way to see models"
  s.description = "A nicer way to see models"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.1"

  s.add_development_dependency "sqlite3"
end
