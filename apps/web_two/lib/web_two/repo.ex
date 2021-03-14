defmodule WebTwo.Repo do
  use Ecto.Repo,
    otp_app: :web_two,
    adapter: Ecto.Adapters.Postgres
end
