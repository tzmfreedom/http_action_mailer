$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "http_mailer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "http_mailer"
  s.version     = HttpMailer::VERSION
  s.authors     = ["tzmfreedom"]
  s.email       = ["makoto_tajitsu@hotmail.co.jp"]
  s.homepage    = ""
  s.summary     = ""
  s.description = ""
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", "~> 5.1.2"
  s.add_dependency "faraday"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
end
