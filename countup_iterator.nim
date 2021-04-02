
# これはうまくいかない
# proc countup(a, b: int): int =
#   var res = a
#   while res <= b:
#     return res
#     inc(res)

# -> returnのあと，次のループへcontinueするには？
# -> yield文

iterator countup(a, b: int): int =
  var res = a
  while res <= b:
    yield res
    inc(res)

echo "20まで数える: "
for i in countup(1, 20):
  echo $i

# イテレータはforループ処理でしか呼び出せない
# イテレータ中に return 文を記述できない
# イテレータはresult変数が暗黙に宣言されない
# イテレータは再帰できない
# イテレータは前方宣言できない（コンパイラによってインライン展開される, なくなるかも？）