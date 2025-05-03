# frozen_string_literal: true

# Only initialize Sentry if someone has set a DSN
dsn = ENV["SENTRY_DSN"]
return unless dsn

Sentry.init do |config|
  # pull your DSN from the environment
  config.dsn = dsn

  # enable both Rails and HTTP breadcrumbs
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # include PII (e.g. user IP, headers) in events
  config.send_default_pii = true

  # performance tracing: use SENTRY_TRACES_SAMPLE_RATE (0.0 if unset)
  config.traces_sample_rate = ENV.fetch("SENTRY_TRACES_SAMPLE_RATE", 0.0).to_f
end
