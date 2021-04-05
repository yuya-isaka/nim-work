# Package

version       = "0.1.0"
author        = "zxwg6329@gmail.com"
description   = "Hello Nim"
license       = "MIT"
srcDir        = "src"

task hello, "this is hello task.":
    echo "Hello"
before hello:
    echo "helloタスク実行前準備"

# 他にもいろいろ指定可能

# Dependencies

requires "nim >= 1.4.4"

# nimble install パッケージ名(公式)
# nimble update
# nimble list
# nimble install URL名(Github)

# パッケージの実行バイナリは~/.nimble/pkgs/以下に置かれる．