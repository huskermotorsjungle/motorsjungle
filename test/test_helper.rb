# test/test_helper.rb

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

# Make Devise’s view helpers available in templates during tests
ActionView::Base.include Devise::Controllers::Helpers

# Enable Devise integration helpers for integration tests
class ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
end

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests
    fixtures :all

    # Helper for HTTP Basic Auth in request specs
    def auth_headers
      token = ActionController::HttpAuthentication::Basic.encode_credentials(
        ENV.fetch("ADMIN_USER"),
        ENV.fetch("ADMIN_PASS")
      )
      { "Authorization" => token }
    end
  end
end
