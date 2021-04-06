
import sequtils

var
  seq1 = [1, 2, 3]

# string型にキャスト
echo seq1.mapIt($it)

# 3倍
seq1.applyIt(it * 3)
echo seq1

# ５に変換
echo seq1.mapIt(5)

