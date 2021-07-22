defmodule ToyRobotTest do
  use ExUnit.Case
  doctest ToyRobot

  test "example 1" do
    commands = ["PLACE 0,0,NORTH","MOVE","REPORT"]
    assert ToyRobot.process_commands(commands) == "0,1,NORTH"
  end
  test "example 2" do
    commands = ["PLACE 0,0,NORTH", "LEFT","REPORT"]
    assert ToyRobot.process_commands(commands) == "0,0,WEST"
  end
  test "example 3" do
    commands = ["PLACE 1,2,EAST","MOVE","MOVE","LEFT","MOVE","REPORT"]
    assert ToyRobot.process_commands(commands) == "3,3,NORTH"
  end
end
