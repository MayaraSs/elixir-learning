defmodule MaypayWeb.AccountsController do
  use MaypayWeb, :controller

  alias Maypay.Account
  alias Maypay.Account.Transaction.Response, as: TransactionResponse

  action_fallback MaypayWeb.FallbackController

  def deposit(conn, params) do
    with {:ok, %Account{} = account} <- Maypay.deposit(params) do
      conn
    |> put_status(:ok)
    |> render("update.json", account: account)
    end
  end

  def withdraw(conn, params) do
    with {:ok, %Account{} = account} <- Maypay.withdraw(params) do
      conn
    |> put_status(:ok)
    |> render("update.json", account: account)
    end
  end

  def transaction(conn, params) do
    with {:ok, %TransactionResponse{} = transaction} <- Maypay.transaction(params) do
      conn
    |> put_status(:ok)
    |> render("transaction.json", transaction: transaction)
    end
  end
end
