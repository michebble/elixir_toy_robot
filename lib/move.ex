import Map, only: [merge: 2]
defmodule Move do
  @type placement_map :: Types.placement_map
  @moduledoc """
  Documentation for `Move`.
  Determines the toy robot's new x y based on the facing.
  """

  @doc """
  Movement

  ## Examples
      iex> Move.call(%{x: 0, y: 1, facing: :NORTH})
      %{x: 0, y: 2, facing: :NORTH}

      iex> Move.call(%{x: 0, y: 1, facing: :WEST})
      %{x: 0, y: 1, facing: :WEST}
  """
  @spec call(placement_map) :: placement_map
  def call(%{x: x, facing: :EAST} = current_placement) do x + 1 |> update_position(:x, current_placement) end
  def call(%{y: y, facing: :NORTH} = current_placement) do y + 1 |> update_position(:y, current_placement) end
  def call(%{y: y, facing: :SOUTH} = current_placement) do y - 1 |> update_position(:y, current_placement) end
  def call(%{x: x, facing: :WEST} = current_placement) do x - 1 |> update_position(:x, current_placement) end

  @spec update_position(integer, atom, placement_map) :: placement_map
  defp update_position(new_position, axis, current_placement) when new_position in 0..4 do
    merge(current_placement, %{axis => new_position})
  end
  defp update_position(_new_position, _axis, current_placement) do current_placement end
end
