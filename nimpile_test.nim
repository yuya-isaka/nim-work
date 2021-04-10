import strutils

echo sizeof(int)

echo low(int)
echo high(int)

echo low(BiggestInt)
echo high(BiggestInt)

var b = -1
let c = ord('1') - ord('0')
echo c
# echo low(BiggestInt) + c
# echo (low(BiggestInt) + c) div 10
# echo (low(BiggestInt) + high(BiggestInt))
# echo -1 div 10
# let a: float = -1 / 10
# echo a
if b >= (low(BiggestInt) + c) div 10:
  b = b * 10 - c

echo b

echo parseInt("-")


#[
  64ビット環境のBiggestInt型はint型と同じ大きさ
  → なぜならBiggestIntはint64と同じだから

  32ビット環境だとint型と大きさが変わってくる

  sizeofでバイト数を返す
]#

# 一旦，Cコンパイラを作成する
# 最初から大掛かりなことをしようとしなくていい
# 後々やればいい．
# Nimコンパイラを作るのは予想以上に大変そうだった．(Cの出力，パースして効率的に最適化されたC言語が出力されるようになっている．)
# まずはCコンパイラを作って，言語処理系を作成する技術を学ぼう

# まずはそこから