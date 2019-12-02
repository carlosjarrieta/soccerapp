require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module SoccerApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.generators.assets = false
    config.generators.helper = false

    config.time_zone = 'America/Bogota'
    config.active_record.default_timezone = :local

    config.i18n.default_locale = :es
    config.i18n.available_locales = [:en, :es]

    config.active_job.queue_adapter = :sidekiq

  end
end
