defmodule CLI do
  def main(args) do
    options = [switches: [commands: :string],aliases: [c: :commands]]
    {opts,_,_}= OptionParser.parse(args, options)
    String.split(opts[:commands], "|")
    |> ToyRobot.process_commands
  end
end
