defmodule MoveTest do
  use ExUnit.Case
  doctest Move

  test "moving north" do
    assert Move.call(%{x: 0, y: 0, facing: :NORTH}) == %{x: 0, y: 1, facing: :NORTH}
  end

  test "moving south" do
    assert Move.call(%{x: 4, y: 4, facing: :SOUTH}) == %{x: 4, y: 3, facing: :SOUTH}
  end

  test "moving east" do
    assert Move.call(%{x: 0, y: 0, facing: :EAST}) == %{x: 1, y: 0, facing: :EAST}
  end

  test "moving west" do
    assert Move.call(%{x: 4, y: 4, facing: :WEST}) == %{x: 3, y: 4, facing: :WEST}
  end

  test "moving north against boundary" do
    assert Move.call(%{x: 0, y: 4, facing: :NORTH}) == %{x: 0, y: 4, facing: :NORTH}
  end

  test "moving south against boundary" do
    assert Move.call(%{x: 4, y: 0, facing: :SOUTH}) == %{x: 4, y: 0, facing: :SOUTH}
  end

  test "moving east against boundary" do
    assert Move.call(%{x: 4, y: 0, facing: :EAST}) == %{x: 4, y: 0, facing: :EAST}
  end

  test "moving west against boundary" do
    assert Move.call(%{x: 0, y: 4, facing: :WEST}) == %{x: 0, y: 4, facing: :WEST}
  end
end
