defmodule WebTwoWeb.PageController do
  use WebTwoWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
