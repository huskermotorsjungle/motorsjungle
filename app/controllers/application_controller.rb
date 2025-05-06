class ApplicationController < ActionController::Base
  # Allow extra Devise params (like account_type) on sign up
  before_action :configure_permitted_parameters, if: :devise_controller?

  protected

  def configure_permitted_parameters
    # Permit :account_type when a user signs up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:account_type])
  end
end
