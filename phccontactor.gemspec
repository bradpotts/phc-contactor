$:.push File.expand_path("lib", __dir__)

# Maintain your gem's version:
require "phccontactor/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "phccontactor"
  s.version     = Phccontactor::VERSION
  s.authors     = ["BradPotts"]
  s.email       = ["brad.potts@phcnetworks.net"]
  s.homepage    = "TODO"
  s.summary     = "TODO: Summary of Phccontactor."
  s.description = "TODO: Description of Phccontactor."
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.2.0"

  s.add_development_dependency "sqlite3"
end
