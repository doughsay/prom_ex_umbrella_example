defmodule AppOne.Repo.Migrations.AddNumbers do
  use Ecto.Migration

  def change do
    create table(:numbers) do
      timestamps()

      add :number, :integer
    end
  end
end
