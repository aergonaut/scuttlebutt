$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "scuttlebutt/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "scuttlebutt"
  s.version     = Scuttlebutt::VERSION
  s.authors     = ["Chris Fung"]
  s.email       = ["aergonaut@gmail.com"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Scuttlebutt."
  s.description = "TODO: Description of Scuttlebutt."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.rdoc"]

  s.add_dependency "rails", "~> 4.2.1"

  s.add_development_dependency "pg"
end
