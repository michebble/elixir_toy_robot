defmodule Place do
  @moduledoc """
  Documentation for `Place`.
  Places the toy robot returning its x y and facing.
  """

  @doc """
  Placement

  ## Examples
      iex> Place.call("PLACE 0,1,NORTH")
      %{x: 0, y: 1, facing: :NORTH}

  """

  def call(command) do
    String.trim_leading(command, "PLACE ")
      |> String.split(",")
      |> transform()
      |> return_placement()
  end

  defp transform([x, y, facing]) do
    [String.to_integer(x), String.to_integer(y), String.to_atom(facing)]
  end

  defp return_placement([x, y, facing]) do
    %{x: x, y: y, facing: facing}
  end
end
