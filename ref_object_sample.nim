
type
  Obj = object
    name: string

  ObjRef = ref Obj

  ObjRef2 = ref object
    name: string

proc oCreate1(): Obj =
  var o = Obj(name: "Sana")
  echo repr o
  return o

proc oCreate2(): ObjRef =
  var o = ObjRef(name: "Momo")
  echo repr o
  return o

proc oCreate3(): ObjRef2 =
  var o = ObjRef2(name: "Mina")
  echo repr o
  return o

proc oCreate4(): ref Obj =
  var o = new Obj
  o.name = "Dahyonn"
  echo repr o
  return o


var
  o1 = oCreate1()
  o2 = oCreate2()
  o3 = oCreate3()
  o4 = oCreate4()

echo "\n-----------------\n"

echo repr o1
echo repr o2
echo repr o3
echo repr o4

