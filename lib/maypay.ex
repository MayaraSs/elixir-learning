defmodule Maypay do
  alias Maypay.Users.Create, as: UserCreate

  defdelegate create_user(params), to: UserCreate, as: :call
end
