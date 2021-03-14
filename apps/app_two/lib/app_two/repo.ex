defmodule AppTwo.Repo do
  use Ecto.Repo,
    otp_app: :app_two,
    adapter: Ecto.Adapters.Postgres
end
