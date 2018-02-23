# Load the Rails application.
require_relative 'application'

# Initialize the Rails application.
Rails.application.initialize!

Instagram.configure do |config|
  config.client_id = ENV['INSTAGRAM_KEY']
  config.client_secret = ENV['INSTAGRAM_SECRET']
  # For secured endpoints only
  #config.client_ips = '<Comma separated list of IPs>'
end