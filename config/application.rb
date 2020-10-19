require_relative 'boot'

require 'rails/all'
require 'coveralls'
Coveralls.wear!
# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RspecDemo
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.0

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.generators do |g|
      g.controller_specs false
      g.view_specs false
      g.helper_specs false
      g.routing_specs false
      g.request_specs false
    end
  end
end
