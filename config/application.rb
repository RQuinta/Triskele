require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module RubyGettingStarted
  class Application < Rails::Application

    config.action_dispatch.default_headers = {
        'Access-Control-Allow-Origin' => '*',
        'Access-Control-Request-Method' => %w{GET POST PUT DELETE OPTIONS}.join(",")
    }

    config.middleware.insert_before 0, "Rack::Cors" do
      allow do
        origins '*'
        resource '*', :headers => :any, :methods => [:get, :post, :put, :delete, :options]
      end
    end

    config.active_job.queue_adapter = :delayed_job
    config.active_record.observers = :acquisition_observer, :user_observer, :professional_observer, :service_observer, :appointment_observer
    
  end
end
