# test/test_helper.rb

ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

# Make Devise’s view helpers available in view rendering
ActionView::Base.send(:include, Devise::Controllers::Helpers)

# Make Devise’s test helpers available in IntegrationTest
class ActionDispatch::IntegrationTest
  include Devise::Test::IntegrationHelpers
end

module ActiveSupport
  class TestCase
    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors)

    # Setup all fixtures in test/fixtures/*.yml for all tests
    fixtures :all

    # Enable Basic Auth helper for Devise in tests
    def auth_headers
      token = ActionController::HttpAuthentication::Basic
        .encode_credentials(
          ENV.fetch("ADMIN_USER"),
          ENV.fetch("ADMIN_PASS")
        )
      { "Authorization" => token }
    end
  end
end
