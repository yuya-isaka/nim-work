
import macros

macro tpub*(x: untyped): untyped =
  expectKind(x, RoutineNodes)
  when defined(testing):
    let n = name(x)
    x.name = newTree(nnkPostfix, ident"*", n)
  result = x

proc main {.tpub.} =
  echo "test"

main()