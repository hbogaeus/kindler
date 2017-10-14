defmodule KindlerWeb.PageController do
  use KindlerWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
