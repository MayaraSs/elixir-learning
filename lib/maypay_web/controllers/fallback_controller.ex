defmodule MaypayWeb.FallbackController do
  use MaypayWeb, :controller

  def call(conn, {:error, result}) do
    conn
    |> put_status(:bad_request)
    |> put_view(MaypayWeb.ErrorView)
    |> render("400.json", result: result)
  end
end
