
import os

template cd*(dir: string, body: untyped) =
  let lastDir = getCurrentDir()
  setCurrentDir(dir)
  body
  setCurrentDir(lastDir)

let rootDir = getCurrentDir().parentDir()
let srcDir = rootDir / "src"
let binDIr = rootDir / "bin"

cd rootDir:
  echo getCurrentDir()
  cd srcDir:
    echo "Hello"
  echo getCurrentDir()
  cd binDir:
    echo "Hello Hello"