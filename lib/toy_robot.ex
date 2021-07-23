defmodule ToyRobot do
  @moduledoc """
  Documentation for `ToyRobot`.
  """

  @doc """
  Process commands

  ## Examples
      iex> commands = ["PLACE 0,0,NORTH","MOVE","REPORT"]
      iex> ToyRobot.process_commands(commands)
      %{facing: :NORTH, x: 0, y: 1}

  """

  def process_commands(commands) do
    inital_state = %{x: nil, y: nil, facing: nil}
    Enum.reduce(commands, inital_state, fn command, state -> execute_commands(command, state) end)
  end

  defp execute_commands("LEFT", state) do Turn.call(state, "LEFT") end
  defp execute_commands("RIGHT", state) do Turn.call(state, "RIGHT") end
  defp execute_commands("MOVE", state) do Move.call(state) end
  defp execute_commands("REPORT", state) do Report.call(state) end
  defp execute_commands(command, _state) do
    Place.call(command)
  end
end
