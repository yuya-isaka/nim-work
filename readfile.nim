
var lines: seq[string] = @["Sana", "Mina", "Momo"]

block:
  var f: File = open("read_from.txt", FileMode.fmRead)
  defer: close(f)
  while not f.endOfFile:
    lines.add(f.readLine())

block:
  var f: File = open("write_to.txt", FileMode.fmWrite)
  defer: close(f)
  for line in lines:
    f.writeLine(line)