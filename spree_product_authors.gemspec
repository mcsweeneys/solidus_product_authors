Gem::Specification.new do |s|
  s.platform    = Gem::Platform::RUBY

  s.name        = 'spree_product_authors'
  s.version     = '2.4.1'
  s.author      = "McSweeney's"
  s.summary     = 'Spree Product Authors enables Spree to assign Spree::Authors to Spree::Products.'
  # s.description = 'TODO: Add (optional) gem description here'
  s.email     = 'custservice@mcsweeneys.net'
  s.homepage  = 'http://www.mcsweeneys.net'

  s.required_ruby_version = '<4.0.0'

  s.add_dependency 'solidus_api'
  s.add_dependency 'solidus_backend', '>= 2.11.0'
  s.add_dependency 'solidus_core', ['>= 1.2.0', '< 4']
  s.add_dependency 'deface'

  s.add_development_dependency 'capybara'
  s.add_development_dependency 'coffee-rails'
  s.add_development_dependency 'database_cleaner'
  s.add_development_dependency 'factory_bot_rails'
  s.add_development_dependency 'ffaker'
  s.add_development_dependency 'generator_spec'
  s.add_development_dependency 'poltergeist'
  s.add_development_dependency 'pry'
  s.add_development_dependency 'puma'
  s.add_development_dependency 'rspec-rails'
  s.add_development_dependency 'sass-rails'
  s.add_development_dependency 'selenium-webdriver'
  s.add_development_dependency 'solidus_frontend'
  s.add_development_dependency 'sqlite3'
end
