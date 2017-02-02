defmodule ElixirClever.PageController do
  use ElixirClever.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
