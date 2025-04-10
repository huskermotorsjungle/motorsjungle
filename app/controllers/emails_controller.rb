class EmailsController < ApplicationController
  protect_from_forgery with: :null_session  # allows POSTs without CSRF token (optional for now)

  def create
    email = params[:email]
    category = params[:category]

    # For now, just log the submission
    Rails.logger.info "🔥 New email sign-up: #{email} (category: #{category})"

    head :ok  # Respond with 200 OK and no body
  end
end
