
from strutils import parseInt

echo "Input max Number: "
let maxNumber: int = readLine(stdin).parseInt

for i in 1..maxNumber:
  if i mod 15 == 0:
    echo "fizzbuzz"
  elif i mod 3 == 0:
    echo "fizz"
  elif i mod 5 == 0:
    echo "buzz"
  else:
    echo $i

proc twice[T](x: T): T = x * 2

echo twice(2)
echo twice(2.0)