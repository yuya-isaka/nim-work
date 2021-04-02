
var
  x: seq[int]

x = @[1, 2, 3, 4, 5, 6]

for i, j in x:
  echo i, " ", j

for i, j in @[3, 4, 5]:
  echo "index: ", $i, ", value:", $j

var y: array[0..5, int]

for i, j in y:
  echo i, " ", j