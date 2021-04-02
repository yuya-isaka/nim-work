template withFile(f, fn, mode, actions: untyped): untyped =
  var f: File
  if open(f, fn, mode):
    try:
      actions
    finally:
      close(f)
  else:
    quit("cannnot open: " & fn)

withFile(txt, "Rabbit.txt", fmWrite):
  txt.writeLine("BlueMountain")
  txt.writeLine("Mocha")
