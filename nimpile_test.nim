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