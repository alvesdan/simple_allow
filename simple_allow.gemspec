$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "simple_allow/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "simple_allow"
  s.version     = SimpleAllow::VERSION
  s.authors     = ["Daniel Alves"]
  s.email       = ["daniel@danielalves.me"]
  s.homepage    = "https://github.com/alvesdan/simple_allow"
  s.summary     = "Simple allow method for strings and symbols"
  s.description = "Simple allow method for strings and symbols"
  s.license     = "MIT"

  s.files = Dir["{lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]
  s.test_files = Dir["spec/**/*"]

  s.add_development_dependency "rspec", ">= 3.0.0"
end
