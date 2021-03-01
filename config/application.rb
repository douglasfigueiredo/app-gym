require_relative "boot"

require "rails/all"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module AppGym
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 6.1
    
    config.assets.initialize_on_precompile = false
    # We use a cookie_store for session data
    # config.session_store :cookie_store, key: '_app_gym_session', domain: :all, tld_length: 2
    
    # config.middleware.use "CustomDomainCookie", ".maisgym.local"

    # Configuration for the application, engines, and railties goes here.
    #
    # These settings can be overridden in specific environments using the files
    # in config/environments, which are processed later.
    #
    # config.time_zone = "Central Time (US & Canada)"
    # config.eager_load_paths << Rails.root.join("extras")
    config.i18n.default_locale = :"pt-BR"
    config.time_zone = "Brasilia"
  end
end
