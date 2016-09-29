defmodule Plug.HealthCheck do
  @moduledoc """
  A plug that returns 200 OK for a health check endpoint.
  """
  import Plug.Conn

  def init(opts) do
    opts
  end

  def call(%{ path_info: ["__health__"]} = conn, _opts) do
    conn
    |> send_resp(200, "ok")
    |> halt()
  end

  def call(conn, _opts) do
    conn
  end
end
