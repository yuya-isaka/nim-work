
type
  Direction = enum
    north, east, south, west
  BlinkLights = enum
    off, on, slowBlink, mediumBlink, fastBlink
  LevelSetting = array[north..west, BlinkLights]

var level: LevelSetting

level[north] = on
level[south] = slowBlink
level[east] = fastBlink

echo repr(level)
echo low(level)
echo len(level)
echo high(level)



type
  LightTower = array[1..10, LevelSetting]

var
  tower: LightTower

tower[1][north] = slowBlink
tower[1][east] = mediumBlink

echo len(tower)
echo len(tower[1])
echo repr(tower)