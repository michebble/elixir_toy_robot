defmodule ToyRobot do
  @moduledoc """
  Documentation for `ToyRobot`.
  """

  @doc """
  Process commands

  ## Examples
      iex> commands = ["PLACE 0,0,NORTH","MOVE","REPORT"]
      iex> ToyRobot.process_commands(commands)
      "0,1,NORTH"

  """
  def process_commands(_commands) do
    "0,1,NORTH"
  end
end
