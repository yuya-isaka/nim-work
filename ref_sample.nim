
var refStr: ref string

echo repr refStr
# ポインタの示す場所

refStr = new(string)
# refStr = new string

echo repr refStr

refStr[] = "test"
# 間接参照

echo repr refStr



var
  str1 = new string # ポインタ変数の宣言
  str2 = str1

str1[] = "test"
str2[] = "aaaa"

echo repr str1
echo repr str2