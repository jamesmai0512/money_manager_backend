# Be sure to restart your server when you modify this file.

# Avoid CORS issues when API is called from the frontend app.
# Handle Cross-Origin Resource Sharing (CORS) in order to accept cross-origin AJAX requests.

# Read more: https://github.com/cyu/rack-cors

Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
  # Condition to check
    # if the environment is development, then using localhost:3000
    # if the environment is production, then using booking-people.netlify.app
    # origins Rails.env === "production" ? 'booking-people.netlify.app' : "localhost:3000"
    origins Rails.env === "production" ? 'bookme.jamesmai.dev' : "localhost:3000"
    # if the environment is development, then using localhost:3000

    resource '*',
      headers: :any,
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
