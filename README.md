# ToyRobot

This is a happy path implementation of the [Toy Robot Problem](PROBLEM.md) written in Elixir.

## Compiling and running

Before starting ensure that you have the correct versions of Elixir and Erlang availble

```
elixir 1.12.2-otp-24
erlang 24.0.3
```

Tests can be run with with the following command

```
mix test
```

The script can be compiled with the following command

```
mix escript.build
```

This will create the `toy_robot` binary in the root directory.

This can be run by passing quoted commands separated by the `|` symbol to the flag `--commands` flag. `-c` is also accepted.

```
./toy_robot -c "PLACE 0,0,NORTH|MOVE|REPORT"
=> 0,1,NORTH
```

### Improvements

- The `call` function defined in the modules that give the toy robot behaviour could use better names.
- It would be good to separate the `Turn.call` into a `left` and `right` function to save passing in the command string.
- Also I would liek to look at a smarter way of changing the facing than just overloading the private function `Turn.turn` 8 times.
- Adding a flag that lets the user load commands from a file would be good.
- Accounting for unhappy paths, sucj as passing no commands or invalid commands would be good.
