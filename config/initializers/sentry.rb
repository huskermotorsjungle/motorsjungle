# frozen_string_literal: true

Sentry.init do |config|
  # pull your DSN from the environment
  config.dsn = ENV.fetch("SENTRY_DSN")

  # enable both Rails and HTTP breadcrumbs
  config.breadcrumbs_logger = [:active_support_logger, :http_logger]

  # include PII (e.g. user IP, headers) in events
  config.send_default_pii = true

  # adjust sampling if you want performance tracing
  # config.traces_sample_rate = 1.0
end
