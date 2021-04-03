#[
  Cソースから呼び出す用のファイル
  NimソースをCへコンパイル
  nim c --noMain --noLinking --header:fib.h fib.nim

  $HOME/.cache/nim/<project_name> for Linux and MacOS
  $HOME/nimcache/<project_name> for Windows
]#

proc fib(a: cint): cint {.exportc.} =
  if a <= 2:
    result = 1
  else:
    result = fib(a-1) + fib(a-2)


#[
  fib.nim
  ↓
  export_test.c
]#