require_relative "boot"

require "rails/all"

Bundler.require(*Rails.groups)

module RailsDockerApp
  class Application < Rails::Application
    config.load_defaults 7.0

    # Arproxy 設定
    # read, writing の表示をしたい時はコメントアウトを外す
    #
    # config.active_record.database_selector = { delay: 2.seconds }
    # config.active_record.database_resolver = ActiveRecord::Middleware::DatabaseSelector::Resolver
    # config.active_record.database_resolver_context = ActiveRecord::Middleware::DatabaseSelector::Resolver::Session
  end
end
