require 'dragonfly'

# Configure
Dragonfly.app.configure do
  plugin :imagemagick

  secret "4a6c71c0517b03f16691954b1228c2f94358b6dc60e41ade0a8f869f4cb9f14e"

  url_format "/media/:job/:name"

  datastore :file,
    root_path: Rails.root.join('public/dragonfly', Rails.env),
    server_root: Rails.root.join('public')
end

# Logger
Dragonfly.logger = Rails.logger

# Mount as middleware
Rails.application.middleware.use Dragonfly::Middleware

# Add model functionality
if defined?(ActiveRecord::Base)
  ActiveRecord::Base.extend Dragonfly::Model
  ActiveRecord::Base.extend Dragonfly::Model::Validations
end
