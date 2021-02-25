defmodule MaypayWeb.AccountsController do
  use MaypayWeb, :controller

  alias Maypay.Account

  action_fallback MaypayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Maypay.deposit(params) do
      conn
    |> put_status(:ok)
    |> render("update.json", account: account)
    end
  end
end
