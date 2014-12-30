defmodule PhoenixTest.Endpoint do
  use Phoenix.Endpoint, otp_app: :phoenix_test

  plug Plug.Static,
    at: "/", from: :phoenix_test

  plug Plug.Logger

  # Code reloading will only work if the :code_reloader key of
  # the :phoenix application is set to true in your config file.
  plug Phoenix.CodeReloader

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.MethodOverride
  plug Plug.Head

  plug Plug.Session,
    store: :cookie,
    key: "_phoenix_test_key",
    signing_salt: "4z9Iy/Vs",
    encryption_salt: "i7YQsxEj"

  plug :router, PhoenixTest.Router
end
