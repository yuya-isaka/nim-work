#[
  whenによってコンパイル時にプラットフォームによって
  読み込む共有ライブラリの名前を切り替えることができる
]#
when defined(windows):
  const sharedname = "testshared.dll" # 何故かこれでも動いた．．
elif defined(macosx):
  const sharedname = "testshared.dylib"
elif defined(unix):
  const sharedname = "testshared.so"


#[
  importcプラグまを使ってCの関数を宣言
]#
proc printf(formatstr: cstring) {.header: "<stdio.h>", importc: "printf", varargs.}

#[
  ・dynlibプラグマを利用
  ・ヘッダが用意できなくても，共有ライブラリから関数をインポート可能
  ・Cソース準備（testshared.c）-> 共有ライブラリとしてコンパイル
]#
proc add5(x: int): int {.dynlib: sharedname, importc: "add5".}

echo add5(2)
printf("%d\n", 3)

#[
  exportcプラグまを使うことで
  CからNimの関数を呼び出すことも可能
  file: fib.nim
]#
