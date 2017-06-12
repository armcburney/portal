require_relative 'boot'

require 'rails/all'

Bundler.require(*Rails.groups)

module Blog
  #
  # Main application configuration
  #
  class Application < Rails::Application
    config.load_defaults 5.1
    config.sass.preferred_syntax = :sass
  end
end
