defmodule MaypayWeb.UsersController do
  use MaypayWeb, :controller

  alias Maypay.User

  action_fallback MaypayWeb.FallbackController

  def create(conn, params) do
    with {:ok, %User{} = user} <- Maypay.create_user(params) do
      conn
    |> put_status(:created)
    |> render("create.json", user: user)
    end
  end
end
