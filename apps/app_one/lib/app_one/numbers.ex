defmodule AppOne.Numbers do
  @moduledoc false

  alias AppOne.{Number, Repo}

  import Ecto.Query

  def insert_and_sum_numbers do
    integer = 1..100 |> Enum.random()

    {:ok, number} = insert(integer)

    sum =
      from(n in Number, select: sum(n.number))
      |> Repo.one!()

    {:ok, {number, sum}}
  end

  defp insert(integer) do
    Repo.insert(%Number{number: integer})
  end
end
