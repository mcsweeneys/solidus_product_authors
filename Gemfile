source 'http://rubygems.org'

branch = ENV.fetch('SOLIDUS_BRANCH', 'master')
gem 'solidus', github: 'solidusio/solidus', branch: 'v2.6'
gem 'solidus_auth_devise', github: 'solidusio/solidus_auth_devise'

if branch == 'master' || branch >= 'v2.0'
  gem 'rails-controller-testing', group: :test
else
  gem 'rails_test_params_backport', group: :test
end

gem 'rake', '< 11.0'
gem 'capybara-screenshot', group: :test

gem 'pg'
gem 'mysql2'

gemspec
