from strutils import parseInt

# 前方宣言
proc even(n: int): bool

proc odd(n: int): bool =
  assert(n >= 0)
  if n == 0: false
  else:
    n == 1 or even(n-1)

proc even(n: int): bool =
  assert(n >= 0)
  if n == 1: false
  else:
    n == 0 or odd(n-1)

echo "数字を入力してください．奇数か偶数か教えてあげます"
var num = parseInt(readLine(stdin))
if even(num):
  echo "偶数だよん"
else:
  echo "奇数じゃ！"