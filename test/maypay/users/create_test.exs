defmodule Maypay.Users.CreateTest do
  use Maypay.DataCase

  alias Maypay.User
  alias Maypay.Users.Create

describe "call/1" do
  params = %{
    name: "mayara",
    password: "12345678",
    nickname: "mayss",
    email: "legal@legal.com",
    age: 25
  }

  {:ok, %User{id: user_id}} = Create.call(params)
  user = Repo.get(User, user_id)
  assert %User{name: "mayara", age: 25, id: ^user_id} = user
end
end
