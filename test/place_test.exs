defmodule PlaceTest do
  use ExUnit.Case
  doctest Place

  test "example 1" do
    assert Place.call("0,0,NORTH") == %{x: 0, y: 0, facing: :NORTH}
  end

  test "example 2" do
    assert Place.call("4,4,SOUTH") == %{x: 4, y: 4, facing: :SOUTH}
  end
end
