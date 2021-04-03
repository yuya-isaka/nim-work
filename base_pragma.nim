type
  Parent = object of RootObj
  Child = object of Parent

method fn(self: Parent) {.base.} =
  echo "I'm parent"
method fn(self: Child) =
  echo "I'm child"

Parent().fn()
Child().fn()