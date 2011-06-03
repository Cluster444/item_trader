require 'spork'
require 'cover_me'

Spork.prefork do
  ENV["RAILS_ENV"] ||= 'test'
  require File.expand_path("../../config/environment", __FILE__)
  require 'rspec/rails'
  require 'shoulda/matchers'

  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}

  RSpec.configure do |config|
    config.mock_with :rspec
    config.fixture_path = "#{::Rails.root}/spec/fixtures"
    config.use_transactional_fixtures = true
    config.include Devise::TestHelpers, :type => :controller
    config.extend ControllerMacros, :type => :controller
  end

  RSpec::Matchers.define :have_valid_factory do |factory|
    match do |model|
      Factory(factory).new_record?.should be_false
    end
  end
end

Spork.each_run do
  require 'factories'
  Dir[Rails.root.join("spec/support/**/*.rb")].each {|f| require f}
  ::ActiveSupport::Deprecation.silenced = true
end

