#[
  ・parseStmtは，stringをNimNodeに変換する関数
  ・reprでブロック内を丸ごとstringにしてしまえば正規表現などが使える
  ・自由度が高いため予想外の挙動を起こすことがある（procw使えばある程度制御できる）
]#

import macros
import strformat

macro times(head, body: untyped): untyped =
  var strBody = ""
  for i in body:
    strBody.add(fmt"  {repr(i)}" & "\n")
  parseStmt(fmt"""
    for i in 0..{repr(head)}:
      {strBody}""")

10.times:
  echo "aaa"

times(5):
  echo "bbb"