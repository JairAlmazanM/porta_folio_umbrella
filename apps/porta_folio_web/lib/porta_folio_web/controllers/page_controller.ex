defmodule PortaFolioWeb.PageController do
  use PortaFolioWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
