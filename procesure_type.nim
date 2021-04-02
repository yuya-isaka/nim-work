
proc echoItem(x: float) = echo x

proc echoItemAndAddone(x: float) = echo x + 1.0

proc forEach(action: proc (x: float)) =
  const
    data = [2, 3, 5, 7, 11]
  for d in items(data):
    action(float(d))

forEach(echoItem)
forEach(echoItemAndAddone)