defmodule Turn do
  @type placement_map :: Types.placement_map
  @moduledoc """
  Documentation for `Turn`.
  Turns the toy robot left or right, changing the facing accordingly.
  """

  @doc """
  Turning

  ## Examples
      iex> Turn.call(%{x: 0, y: 1, facing: :NORTH}, "LEFT")
      %{x: 0, y: 1, facing: :WEST}

      iex> Turn.call(%{x: 0, y: 1, facing: :NORTH}, "RIGHT")
      %{x: 0, y: 1, facing: :EAST}
  """
  @spec call(placement_map, Sting.t) :: placement_map
  def call(%{facing: facing} = current_placement, direction) do
    turn(facing, direction)
    |> update_facing(current_placement)
  end

  @spec update_facing(atom, placement_map) :: placement_map
  defp update_facing(new_facing, current_placement) do
    Map.merge(current_placement, %{facing: new_facing})
  end

  @spec turn(atom, String.t) :: atom
  defp turn(:NORTH, "LEFT") do :WEST end
  defp turn(:WEST, "LEFT") do :SOUTH end
  defp turn(:SOUTH, "LEFT") do :EAST end
  defp turn(:EAST, "LEFT") do :NORTH end
  defp turn(:NORTH, "RIGHT") do :EAST end
  defp turn(:EAST, "RIGHT") do :SOUTH end
  defp turn(:SOUTH, "RIGHT") do :WEST end
  defp turn(:WEST, "RIGHT") do :NORTH end
end
