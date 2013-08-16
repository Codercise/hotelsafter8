# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Vote::Application.initialize!


class Settings < Settingslogic
  source "#{Rails.root}/config/settings.yml"
  namespace Rails.env
end