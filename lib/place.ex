defmodule Place do
  @type placement_map :: Types.placement_map
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
  @spec call(String.t) :: placement_map
  def call(command) do
    String.trim_leading(command, "PLACE ")
      |> String.split(",")
      |> transform()
      |> return_placement()
  end

  @spec transform([String.t, ...]) :: [...]
  defp transform([x, y, facing]) do
    [String.to_integer(x), String.to_integer(y), String.to_atom(facing)]
  end

  @spec return_placement([...]) :: placement_map
  defp return_placement([x, y, facing]) do
    %{x: x, y: y, facing: facing}
  end
end
