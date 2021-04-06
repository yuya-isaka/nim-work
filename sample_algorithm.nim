import algorithm

type
  Person = tuple[name: string, age: int]

var
  p1: Person = (name: "p1", age: 60)
  p2: Person = (name: "p2", age: 20)
  p3: Person = (name: "p3", age: 10)
  people = @[p1, p2, p3]

echo people.sortedByIt(it.name)

echo people.sortedByIt( (it.age, it.name) )