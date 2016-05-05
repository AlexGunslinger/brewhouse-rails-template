require 'simplecov'
SimpleCov.start

ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'

require 'sidekiq/testing'

Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

# Checks for pending migrations before tests are run.
ActiveRecord::Migration.maintain_test_schema!

Sidekiq::Testing.inline!

RSpec.configure do |config|
  # Run each example within a SQL transaction
  config.use_transactional_fixtures = true

  config.infer_spec_type_from_file_location!

  # You can call `create(:user)` instead of `FactoryGirl.create(:user)`
  config.include FactoryGirl::Syntax::Methods
end
