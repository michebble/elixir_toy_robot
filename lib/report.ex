defmodule Report do
  @type placement_map :: Types.placement_map
  @moduledoc """
  Documentation for `Report`.
  Reports the current placement of the Robot.
  """
  @doc """
  Reporting

  ## Examples
      iex> Report.call(%{x: 0, y: 1, facing: :NORTH})
      %{x: 0, y: 1, facing: :NORTH}

  """

  @spec call(placement_map) :: placement_map()
  def call(%{x: x, y: y, facing: facing} = current_placement) do
    IO.puts("#{x},#{y},#{facing}")
    current_placement
  end
end
