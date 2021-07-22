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

      iex> Move.call(%{x: 0, y: 1, facing: :WEST})
      %{x: 0, y: 1, facing: :WEST}
  """
  def call(%{x: x, facing: :EAST} = current_placement) do x + 1 |> update_position(:x, current_placement) end
  def call(%{y: y, facing: :NORTH} = current_placement) do y + 1 |> update_position(:y, current_placement) end
  def call(%{y: y, facing: :SOUTH} = current_placement) do y - 1 |> update_position(:y, current_placement) end
  def call(%{x: x, facing: :WEST} = current_placement) do x - 1 |> update_position(:x, current_placement) end

  defp is_on_board(new_position, board_size \\ 0..4) do new_position in board_size end

  defp update_position(new_position, axis, current_placement) do
    if is_on_board(new_position),
      do: merge(current_placement, %{axis => new_position}),
      else: current_placement
  end
end
