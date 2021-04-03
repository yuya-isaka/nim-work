type
  Person = object
    name: string
    age: int

#[
  `$`は常にstringを返す
]#
proc `$`(p: Person): string =
  result = p.name & " is " & $p.age & " years old."

var Bob = Person(name: "Bob", age: 22)
echo $Bob
echo Bob
echo $(Bob)