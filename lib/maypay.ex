defmodule Maypay do
  alias Maypay.Users.Create, as: UserCreate

  alias Maypay.Account.Deposit

  defdelegate create_user(params), to: UserCreate, as: :call

  defdelegate deposit(params), to: Deposit, as: :call

end
