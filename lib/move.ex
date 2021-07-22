import Map, only: [merge: 2]
defmodule Move do
  @moduledoc """
  Documentation for `Move`.
  Determines the toy robot's new x y based on the facing.
  """

  @doc """
  Movement

  ## Examples
      iex> Move.call(%{x: 0, y: 1, facing: :NORTH})
      %{x: 0, y: 2, facing: :NORTH}
  """
  def call(%{x: x, facing: :EAST} = current_placement) do merge(current_placement, %{x: x + 1}) end
  def call(%{y: y, facing: :NORTH} = current_placement) do merge(current_placement, %{y: y + 1}) end
  def call(%{y: y, facing: :SOUTH} = current_placement) do merge(current_placement, %{y: y - 1}) end
  def call(%{x: x, facing: :WEST} = current_placement) do merge(current_placement, %{x: x - 1}) end
end
