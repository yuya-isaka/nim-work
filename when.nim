when system.hostOS == "windows":
  echo "Windowsで動かしていますね！"
elif system.hostOS == "linux":
  echo "Linuxで動かしていますね！"
elif system.hostOS == "macosx":
  echo "Mac OS X で動かしていますね！"
else:
  echo "知らんOSや！"

# コンパイラが計算できるように定まった値を使う
# コンパイラは構文を解析し，コンパイル時点でtrueだった最初の分岐の中の式のみをコンパイル


# -> それぞれのプラットフォームに適したコードを書くときに便利
# Cのifdef
