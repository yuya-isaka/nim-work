
# コンパイルエラー
# block myblick:
#   var x = "hi"
# echo x

block myblock:
  echo "ブロックに入る"
  while true:
    echo "ループの中"
    break
  echo "まだブロックの中"
