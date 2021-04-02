
var
  fruits: seq[string]
  capitals: array[3, string]

fruits = @[]

capitals = ["New York", "London", "Berlin"]
fruits.add("Banana")
fruits.add("Mango")

proc OpenArraySize(oa: openArray[string]): int =
  oa.len

assert OpenArraySize(fruits) == 2
assert OpenArraySize(capitals) == 3