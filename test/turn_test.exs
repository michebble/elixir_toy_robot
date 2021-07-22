defmodule TurnTest do
  use ExUnit.Case
  doctest Turn

  test "turning left" do
    assert Turn.call(%{x: 0, y: 0, facing: :NORTH}, "LEFT") == %{x: 0, y: 0, facing: :WEST}
    assert Turn.call(%{x: 0, y: 0, facing: :WEST}, "LEFT") == %{x: 0, y: 0, facing: :SOUTH}
    assert Turn.call(%{x: 0, y: 0, facing: :SOUTH}, "LEFT") == %{x: 0, y: 0, facing: :EAST}
    assert Turn.call(%{x: 0, y: 0, facing: :EAST}, "LEFT") == %{x: 0, y: 0, facing: :NORTH}
  end

  test "turning right" do
    assert Turn.call(%{x: 0, y: 0, facing: :NORTH}, "RIGHT") == %{x: 0, y: 0, facing: :EAST}
    assert Turn.call(%{x: 0, y: 0, facing: :EAST}, "RIGHT") == %{x: 0, y: 0, facing: :SOUTH}
    assert Turn.call(%{x: 0, y: 0, facing: :SOUTH}, "RIGHT") == %{x: 0, y: 0, facing: :WEST}
    assert Turn.call(%{x: 0, y: 0, facing: :WEST}, "RIGHT") == %{x: 0, y: 0, facing: :NORTH}
  end
end
