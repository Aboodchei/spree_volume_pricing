lib = File.expand_path('../lib/', __FILE__)
$LOAD_PATH.unshift lib unless $LOAD_PATH.include?(lib)

require 'spree_volume_pricing/version'

Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY
  s.name        = 'spree_volume_pricing'
  s.version     = SpreeVolumePricing.version
  s.summary     = 'Allow prices to be configured in quantity ranges for each variant'
  s.description = s.summary
  s.required_ruby_version = '>= 2.2.3'

  s.author       = 'Sean Schofield'
  s.email        = 'sean@railsdog.com'
  s.homepage     = 'https://github.com/spree-contrib/spree_volume_pricing'
  s.license      = 'BSD-3'

  s.files        = `git ls-files`.split("\n")
  s.test_files   = `git ls-files -- spec/*`.split("\n")
  s.require_path = 'lib'
  s.requirements << 'none'

  s.add_runtime_dependency 'spree_core', '>= 3.1.0', '< 5.0'
  s.add_runtime_dependency 'spree_extension'
  s.add_runtime_dependency 'deface', '~> 1.0'

  s.add_development_dependency 'sqlite3'
  s.add_development_dependency 'capybara'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'shoulda-matchers'
  s.add_development_dependency 'rspec-rails', '~> 4.0.0.beta2'
  s.add_development_dependency 'simplecov'
  s.add_development_dependency 'factory_bot', '~> 4.7'
  s.add_development_dependency 'pry-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'rubocop'
  s.add_development_dependency 'guard-rspec'
  s.add_development_dependency 'mysql2'
  s.add_development_dependency 'pg'
  s.add_development_dependency 'appraisal'
end
