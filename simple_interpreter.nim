import rdstdin

proc sayHello(): int =
  echo "Hello"
  return 0

proc sayGoodbye(): int =
  echo "Goodbye"
  return 1

proc sayNice(): int =
  echo "Nice"
  return 0

type
  BuiltinCommand = object
    name: string
    fn: proc (): int

var
  builtinCommands: seq[BuiltinCommand] = @[
    BuiltinCommand(name:"hello", fn: sayHello),
    BuiltinCommand(name:"goodbye", fn: sayGoodbye),
    BuiltinCommand(name:"nice", fn: sayNice),
  ]

when isMainModule:
  echo "You can input hello, goodbye, nice"
  while true:
    let input = readLineFromStdin(">")
    var execCode = -1
    for cmd in builtinCommands:
      if input == cmd.name:
        execCode = cmd.fn()
    if execCode == -1:
      echo "Unknown command: ", input
    elif execCode == 1:
      break
  echo "End this program"