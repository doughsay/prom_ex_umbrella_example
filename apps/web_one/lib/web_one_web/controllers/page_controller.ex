defmodule WebOneWeb.PageController do
  use WebOneWeb, :controller

  def index(conn, _params) do
    {:ok, {number, sum}} = AppOne.Numbers.insert_and_sum_numbers()

    render(conn, "index.html")
  end
end
