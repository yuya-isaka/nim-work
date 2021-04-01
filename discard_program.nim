
proc p(x, y: int): int {.discardable.} =
  return x + y

p(3, 4)