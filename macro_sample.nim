import strformat
import macros

#[
  macroの引数の渡され方
  引数の型はuntypedで指定しているがNimNodeKindという型で渡される
]#
macro checkToken(head, body: untyped): untyped =
  for indexI, i in head:
    if i.len() > 1:
      for indexJ, j in i:
        if j.len() > 1:
          for indexK, k in j:
            echo fmt"head[{repr(indexI)}][{repr(indexJ)}][{repr(indexK)}] = {repr(k)}"
        else:
          echo fmt"head[{repr(indexI)}][{repr(indexJ)}]={repr(j)}"
    else:
      echo fmt"head[{repr(indexI)}]={repr(i)}"

  for indexI, i in body:
    if i.len() > 1:
      for indexJ, j in i:
        if j.len() > 1:
          for indexK, k in j:
            echo fmt"body[{repr(indexI)}][{repr(indexJ)}][{repr(indexK)}] = {repr(k)}"
        else:
          echo fmt"body[{repr(indexI)}][{repr(indexJ)}]={repr(j)}"
    else:
      echo fmt"body[{repr(indexI)}]={repr(i)}"

  echo "\n"

checkToken hoge(x, y=2):
  fuga(fugaga(x+y))

echo "==================================" # コンパイル時にmacroは作られるからこれは後で出る？

checkToken Hoge(Fuga):
  x = 10
  y = 20
  proc test(self: Hoge, x: int, y: int): int =
    return self.x + x + y

