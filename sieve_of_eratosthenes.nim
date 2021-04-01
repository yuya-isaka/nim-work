var n = 100

var primes: seq[int] # 可変長の配列（シーケンス）
primes = @[] # 初期化（上のは宣言だけ） -> ヒープ領域にオブジェクト作成
var x = newSeq[int](n+1) # 配列サイズ指定してシーケンス作成（0で初期化）
for i in countup(2, n):
  if x[i] == 0:
    primes.add(i)

    for j in countup(i, n, i):
      x[j] = i

stdout.write primes

# プロシージャバージョン
proc sieve_of_eratothenes(n: int): seq[int] =
  var primes: seq[int]
  primes = @[]
  var x = newSeq[int](n+1)
  for i in countup(2, n):
    if x[i] == 0:
      primes.add(i)

      for j in countup(i, n, i):
        x[j] = i

  primes

stdout.write sieve_of_eratothenes(n)