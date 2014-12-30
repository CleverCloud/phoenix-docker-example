use Mix.Config

config :phoenix_test, PhoenixTest.Endpoint,
  http: [port: System.get_env("PORT") || 4001]
