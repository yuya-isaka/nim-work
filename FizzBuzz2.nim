
const f: string = "Fizz"

var b = "buzz"
b = "Buzz"

for i in 1..100:
  if i mod 15 == 0:
    echo (f & b)
  elif i mod 5 == 0:
    echo b
  elif i mod 3 == 0:
    f.echo()
  else:
    i.echo