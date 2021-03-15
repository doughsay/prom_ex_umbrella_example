defmodule AppOne.Number do
  use Ecto.Schema

  schema "numbers" do
    field :number, :integer

    timestamps()
  end
end
