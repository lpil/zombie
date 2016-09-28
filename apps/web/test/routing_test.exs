defmodule Web.RoutingTest do
  use ExUnit.Case, async: true
  use Web.ConnCase

  test "graphiql editor is presented for text/html" do
    response =
      build_conn()
      |> put_req_header("accept", "text/html")
      |> get("/")
      |> html_response(200)
    assert response =~ "graphiql"
  end
end
