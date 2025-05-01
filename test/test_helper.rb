ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...

    # helper to send HTTP Basic credentials in controller tests
    def auth_headers
      user = ENV.fetch("ADMIN_USER", "admin")
      pass = ENV.fetch("ADMIN_PASS", "secret")
      {
        "HTTP_AUTHORIZATION" =>
          ActionController::HttpAuthentication::Basic.encode_credentials(user, pass)
      }
    end
  end
end
