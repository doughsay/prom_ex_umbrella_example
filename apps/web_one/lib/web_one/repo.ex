defmodule WebOne.Repo do
  use Ecto.Repo,
    otp_app: :web_one,
    adapter: Ecto.Adapters.Postgres
end
