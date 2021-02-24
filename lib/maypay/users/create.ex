defmodule Maypay.Users.Create do
  alias Maypay.{Repo, User}

  def call(params) do
    params
    |> User.changeset()
    |> Repo.insert()
  end
end
