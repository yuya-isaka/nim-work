
# import sequtils

# proc fizzBuzz(i: int): string =
#   if i mod 15 == 0: "FizzBuzz"
#   elif i mod 3 == 0: "Fizz"
#   elif i mod 5 == 0: "Buzz"
#   else: $i

# for word in toSeq(1..100).map(fizzBuzz):
#   echo word


iterator fizzBuzz(max: int): string =
  for i in countup(1, max):
    yield if i mod 15 == 0: "FizzBuzz"
          elif i mod 3 == 0: "Fizz"
          elif i mod 5 == 0: "Buzz"
          else: $i

for word in fizzBuzz(100):
  echo word

# iterator だから値を保持してる