use Mix.Config

config :web, Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base:
    "CRGw45TIJfpBRoyLSvNzK+vvjFsWjeUIa8hOKol9A/mDEV6HN45OAaCmZGdvIPwg",
  render_errors: [view: Web.ErrorView, accepts: ~w(json)]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

import_config "#{Mix.env}.exs"
