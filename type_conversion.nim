var
  x: int32 = 1.int32 #int32(1)
  y: int8 = int8('a') # 97
  z: int = int(2.5) # 2
  sum: int = int(x) + int(y) + int(z) # sum == 100

echo x, '\n', y, '\n', z, '\n', sum


var
  myBool = true
  myCharacter = 'n'
  myString = "nim"
  myInteger = 42
  myFloat = 3.14

echo myBool, ":", repr(myBool)
echo myCharacter, ":", repr(myCharacter)
echo myString, ":", repr(myString)
echo myInteger, ":", repr(myInteger)
echo myFloat, ":", repr(myFloat)


