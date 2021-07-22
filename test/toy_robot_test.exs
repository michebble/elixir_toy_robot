defmodule ToyRobotTest do
  use ExUnit.Case
  doctest ToyRobot

  test "example 1" do
    commands = ["PLACE 0,0,NORTH","MOVE","REPORT"]
    assert ToyRobot.process_commands(commands) == "0,1,NORTH"
  end
end
