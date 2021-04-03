#[
  not nil
]#

import strformat
{.experimental: "notnil".}

type
  # Nil許可型
  NilablePoint = ref object
    x,y: int
  # Nil不許可型
  Point = NilablePoint not nil

proc `$`(self:NilablePoint):string = fmt"x:{self.x},y:{self.y}"

# let p1:Point = nil # これはコンパイルエラー
let p2:NilablePoint = Point(x:1, y:1)
let p3:Point = NilablePoint(x:1, y:1)
echo p2
echo p3


#[
  nilを返し得るプロシージャとの関係
]#
proc nilableProc(n: int): NilablePoint=
  if n > 0:
    NilablePoint(x:n, y:69)
  else:
    nil

# 作成したPoint型にバインドされるプロシージャ
proc showX(self: Point) = echo(self.x)
proc showX(self: NilablePoint) = echo(self.y)

# 意図通りコンパイルエラー -> Nil安全
# let p1: Point = nilableProc(1)
let p4: NilablePoint = nilableProc(1)
p4.showX