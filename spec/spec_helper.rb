ENV['RAILS_ENV'] ||= 'test'

begin
  require File.expand_path('../dummy/config/environment', __FILE__)
rescue LoadError
  puts 'Could not load dummy application. Please ensure you have run `bundle exec rake test_app`'
  exit
end

require 'rspec/rails'
require 'ffaker'
require 'pry'

require 'spree/testing_support/factories'
require 'spree/testing_support/capybara_ext'

Dir[File.join(File.dirname(__FILE__), 'support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include FactoryBot::Syntax::Methods

  config.color = true
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.infer_spec_type_from_file_location!
end
