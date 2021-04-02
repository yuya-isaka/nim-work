type
  IntArray = array[0..5, int]

var
  x: IntArray

x = [1, 2, 3, 4, 5, 6]
for i in low(x)..high(x):
  echo x[i]