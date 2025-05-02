# config/initializers/sentry.rb
Sentry.init do |config|
  # Use the DSN from your environment
  config.dsn = ENV.fetch("SENTRY_DSN")

  # Log Rails breadcrumbs
  config.breadcrumbs_logger = %i[active_support_logger http_logger]

  # Adjust sample rate as needed (0.0–1.0)
  config.traces_sample_rate = 0.5
end
