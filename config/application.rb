require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

# Load environment variables from .env file
Dotenv::Railtie.load

module Blog
  #
  # Main application configuration
  #
  class Application < Rails::Application
    config.app_generators.javascript_engine :typescript

    # Enable the asset pipeline
    config.assets.enabled = true
    config.load_defaults 5.1
    config.sass.preferred_syntax = :sass
  end
end
