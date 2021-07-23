defmodule ToyRobotTest do
  use ExUnit.Case
  doctest ToyRobot
  import ExUnit.CaptureIO

  test "it accepts commands and outputs it final placement to the console" do
    assert capture_io(fn ->
      ToyRobot.process_commands(["PLACE 0,0,NORTH","MOVE","REPORT"])
    end) == "0,1,NORTH\n"

    assert capture_io(fn ->
      ToyRobot.process_commands(["PLACE 0,0,NORTH", "LEFT","REPORT"])
    end) == "0,0,WEST\n"

    assert capture_io(fn ->
      ToyRobot.process_commands(["PLACE 1,2,EAST","MOVE","MOVE","LEFT","MOVE","REPORT"])
    end) == "3,3,NORTH\n"
  end
end
