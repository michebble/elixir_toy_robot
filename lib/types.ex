defmodule Types do
  @typedoc """
  A placement containing x and y coordinates, and the cardinal direction being faced
  e.g. %{x: 2, y: 3, facing: :NORTH}
  """
  @type placement_map :: %{x: integer, y: integer, facing: atom}
end
