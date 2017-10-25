require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Smartroof
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    config.assets.paths << "#{Rails.root}/app/assets/videos"
    

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.

    config.action_mailer.delivery_method = :smtp
    config.action_mailer.smtp_settings = {
      :port           => 587,
      :address        => 'smtp.mailgun.org',
      :user_name      => ENV['MAILGUN_USER'],
      :password       => ENV['MAILGUN_PASSWORD'],
      :domain         => 'nospicy.net',
      :authentication => :plain
    }
  end
end
