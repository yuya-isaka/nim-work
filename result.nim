
proc sumTillNegative(x: varargs[int]): int =
  for i in x:
    if i < 0:
      return
    result += i

echo sumTillNegative()
echo sumTillNegative(3, 4, 5)
echo sumTillNegative(3, 4, -1, 6)