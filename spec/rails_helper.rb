# This file is copied to spec/ when you run "rails generate rspec:install"
ENV["RAILS_ENV"] ||= "test"
require "spec_helper"
require File.expand_path("../../config/environment", __FILE__)
require "rspec/rails"
# Add additional requires below this line. Rails is not loaded until this point!
require "shoulda-matchers"
require "cancan/matchers"
require "paper_trail/frameworks/rspec"

# Add spec/support to load path for easier requiring
$LOAD_PATH.unshift File.expand_path("../support", __FILE__)

# Checks for pending migrations before tests are run.
# If you are not using ActiveRecord, you can remove this line.
ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  # Sorcery helpers
  config.include Sorcery::TestHelpers::Rails::Controller, type: :controller
  config.include Sorcery::TestHelpers::Rails::Integration, type: :feature

  # FactoryGirl helpers
  config.include FactoryGirl::Syntax::Methods

  config.infer_spec_type_from_file_location!

  config.before(:suite) do
    begin
      DatabaseCleaner.start
      FactoryGirl.reload
      FactoryGirl.lint
    ensure
      DatabaseCleaner.clean
    end
  end

  config.around(:each) do |spec|
    # Cleanup database after each spec
    DatabaseCleaner.strategy = :transaction
    DatabaseCleaner.cleaning do
      spec.run
    end
  end
end

