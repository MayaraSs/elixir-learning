defmodule Maypay.Repo do
  use Ecto.Repo,
    otp_app: :maypay,
    adapter: Ecto.Adapters.Postgres
end
