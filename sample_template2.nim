# template echoTemp(a: int) =
#   echo a
#   echo a

template echoTemp(a: untyped) =
  echo a
  echo a

proc plus1(a: int): int =
  echo "in: " & $a
  result = a + 1

echoTemp(plus1(1))