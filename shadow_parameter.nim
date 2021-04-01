proc printSeq(s: seq, nprinted: int = -1) =
  var nprinted = if nprinted == -1: s.len else: min(nprinted, s.len)
  for i in 0 ..< nprinted:
    echo s[i]

var twice = newSeq[string](2)
twice.add("Sana")
twice.add("Momo")
printSeq(twice)

# 呼び出し先の引数をプロシージャで変えるには，varパラメータを使う

proc divmod(a, b: int, res, remainder: var int) =
  res = a div b
  remainder = a mod b

var
  x, y: int

divmod(8, 5, x, y)
echo x
echo y