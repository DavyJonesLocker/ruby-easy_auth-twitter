$:.push File.expand_path('../lib', __FILE__)

# Maintain your gem's version:
require 'easy_auth/twitter/version'

# Describe your gem and declare its dependencies:
Gem::Specification.new do |s|
  s.name        = 'easy_auth-twitter'
  s.version     = EasyAuth::Twitter::VERSION
  s.authors     = ['Brian Cardarella', 'Dan McClain']
  s.email       = ['brian@dockyard.com', 'bcardarella@gmail.com', 'rubygems@danmcclain.net']
  s.homepage    = 'https://twitter.com/dockyard/easy_auth-twitter'
  s.summary     = 'EasyAuth-Twitter'
  s.description = 'EasyAuth-Twitter'

  s.files = Dir['{app,config,db,lib}/**/*'] + ['Rakefile', 'README.md']

  s.add_dependency 'easy_auth-oauth', '~> 0.1.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'vcr'
  s.add_development_dependency 'fakeweb'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'capybara-email'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_girl_rails', '~> 1.7.0'
  s.add_development_dependency 'factory_girl', '~> 2.6.0'
  s.add_development_dependency 'bourne'
  s.add_development_dependency 'launchy'
end
