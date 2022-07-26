require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module WalletTransferSystem
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    initializer(:remove_action_mailbox_and_activestorage_routes, after: :add_routing_paths) { |app|
      app.routes_reloader.paths.delete_if { |path| path =~ /activestorage/ }
      app.routes_reloader.paths.delete_if { |path| path =~ /actionmailbox/ }
    }

    # config.i18n.default_locale = :"pt-BR"
    # I18n.enforce_available_locales = false

    config.time_zone = 'Brasilia'
    config.api_only = true
  end
end
