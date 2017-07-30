$:.push File.expand_path("../lib", __FILE__)

# Maintain your gem's version:
require "http_action_mailer/version"

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = "http_action_mailer"
  s.version     = HttpActionMailer::VERSION
  s.authors     = ["tzmfreedom"]
  s.email       = ["makoto_tajitsu@hotmail.co.jp"]
  s.homepage    = "https://github.com/tzmfreedom/http_action_mailer"
  s.summary     = "HTTP delivery method for ActionMailer"
  s.description = "HTTP delivery method for ActionMailer"
  s.license     = "MIT"

  s.files = Dir["{app,config,db,lib}/**/*", "MIT-LICENSE", "Rakefile", "README.md"]

  s.add_dependency "rails", ">= 4.0.0"
  s.add_dependency "faraday"

  s.add_development_dependency "sqlite3"
  s.add_development_dependency "rspec-rails"
  s.add_development_dependency "webmock"
end
