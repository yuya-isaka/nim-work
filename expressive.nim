
import math

proc `$` (x, y: int): int =
  return fac(x) div (fac(y) * fac(x - y))

echo 5 $ 2
