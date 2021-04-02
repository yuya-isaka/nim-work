from strutils import parseInt

iterator fizzbuzz(n: int): string =
  for i in 1..n:
    if i mod 15 == 0:
      yield "fizzbuzz"
    elif i mod 3 == 0:
      yield "fizz"
    elif i mod 5 == 0:
      yield "buzz"
    else:
      yield $i

echo "君のfizzbuzz回数は何回だい！"
block read_input:
  while true:
    try:
      let user_input = readLine(stdin).parseInt()
      for i in fizzbuzz(user_input):
        echo i
      break
    except ValueError:
      echo "could not convert string to integer"
      echo "数値を入力してね！"


echo "Done"