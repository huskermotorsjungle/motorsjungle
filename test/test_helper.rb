# test/test_helper.rb

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

# Include Devise’s helpers in integration tests so layouts can call user_signed_in?
class ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
  include Devise::Controllers::Helpers
end

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests
    fixtures :all

    # Helper for Basic Auth in request specs
    def auth_headers
      token = ActionController::HttpAuthentication::Basic.encode_credentials(
        ENV.fetch("ADMIN_USER"),
        ENV.fetch("ADMIN_PASS")
      )
      { "Authorization" => token }
    end
  end
end
