
proc plus1(a: int): int =
  echo "in: " & $a
  result = a + 1

proc echoInline(a: int) {.inline.} =
  echo a
  echo a

echoInline(plus1(1))



#[
  sample_template2.nim
  でのテンプレートと使い分けを悩むらしい
]#