defmodule ReportTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Report

  test "it outputs the current placement to the console" do
    assert capture_io(fn ->
      Report.call(%{x: 4, y: 4, facing: :SOUTH})
    end) == "4,4,SOUTH\n"
    assert capture_io(fn ->
      Report.call(%{x: 2, y: 3, facing: :WEST})
    end) == "2,3,WEST\n"
  end

  test "it returns the current placement" do
    assert Report.call(%{x: 2, y: 3, facing: :WEST}) == %{x: 2, y: 3, facing: :WEST}
  end
end
