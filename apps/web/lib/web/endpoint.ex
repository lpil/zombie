defmodule Web.Endpoint do
  @moduledoc false
  use Phoenix.Endpoint, otp_app: :web

  if code_reloading? do
    plug Phoenix.CodeReloader
  end

  plug Plug.RequestId
  plug Plug.Logger

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Poison

  plug Plug.HealthCheck

  plug Absinthe.Plug.GraphiQL,
    schema: Web.Schema
end
