
type
  IntArray = array[0..5, int]
  QuickArray = array[6, int]

var
  x: IntArray
  y: QuickArray

x = [1, 2, 3, 4, 5, 6]
y = x

for i in low(x)..high(x):
  y[i] = 3
  echo x[i], y[i]