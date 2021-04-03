#[
  副作用チェック
  戻り値が引数のみ依存している->副作用なし
]#

#[
  関数外の変数の参照はだめ
]#
# let i = 0
# func varFunc(arg: int): int = i + arg

const i = 0
func varFunc(arg: int): int = i + arg
echo varFunc(3)


#[
  呼び出すプロシージャが副作用を持っているケース
]#
# let j = 0
# proc subProc(arg: int): int = j + arg
# func callProcFunc(arg: int): int = subProc(arg)

#[
  引数を変更しちゃうケース
  これはOK
  引数のパラメータが var T, ref T, ptr T のいずれかだからOK
]#
func varArgFunc(arg: var int): int =
  arg += 1
  return arg
var k = 1
echo varArgFunc(k)