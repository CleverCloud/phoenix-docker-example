# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :phoenix_test, PhoenixTest.Endpoint,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "93I1iALFOr8zEDC+GibYoj/s2zqbQ7N+HfQy8PD7Mhg8mrhG10fJQZ+/h+Sl5FKi",
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
