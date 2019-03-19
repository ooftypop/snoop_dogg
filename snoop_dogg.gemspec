$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "snoop_dogg/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "snoop_dogg"
  s.version     = SnoopDogg::VERSION
  s.authors     = ["Kevin J. Storberg"]
  s.email       = ["kevin@ooftypop.com"]
  s.homepage    = "https://github.com/ooftypop/snoop_dogg"
  s.summary     = "A nicer way to see Models"
  s.description = "A nicer way to see Models"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 5.1.4"

  s.add_development_dependency "sqlite3"
end
