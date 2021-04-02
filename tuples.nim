
type
  Person = tuple[name: string, age: int]

var
  person: Person

person = (name: "Peter", age: 30)
person = ("Peter", 30)

echo person.name
echo person.age

echo person[0]
echo person[1]


var building: tuple[street: string, number: int]
building = ("Rue del Percebe", 13)
echo "--------------------------"
echo building.street

var teacher: tuple[name: string, age: int] = ("Mark", 42)
person = teacher

echo "--------------------------"
echo person.name
echo person[1]
