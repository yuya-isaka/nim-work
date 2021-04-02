# メタプログラミングの練習
#[
  ・メタプログラミングはコードの自動生成を行うもの
  ・今回の題材は，JSONシリアライズ（オブジェクトをJSON形式にシリアライズ）
  ・Nimで特定の型のJSONシリアライズ関数を自動で実装する幕をを書く
]#

#[
  関数を組み立てる際に文字列ベースで組み立てて，それをパースした(79行目)
  -> NimではASTを直に組み立てることもできる．（こっちの方が推奨？）
  -> Nimはインデントでブロックを作る形式の構文だから文字列ベースだと少々面倒？
]#

#[
  Nimには標準ライブラリにオブジェクトのシリアライズをしてくれる関数があるので，
  今回使ったものを使うことは少ないかもだけど
  マクロの練習にはなるかも
]#

import strutils, sequtils, json
import macros

type
  # 新規Object型を定義
  Member = object
    name*: string # モジュール外公開フィールド
    typ*: string # モジュール外公開フィールド

#[
  ・exportマーカーの*を，ASTから除去する関数
  ・NimNodeオブジェクトのメソッドとして追加している？？（糖衣構文として利用するために）
    ->（これは実際には30行目で使われている）
]#
proc removePostfix*(ident: NimNode): NimNode =
  if ident.kind == nnkPostfix: # exportマーカーのノードはnnkPostfix
    return ident[1]
  else:
    return ident

#[
  ・型の実装からフィールド一覧を取得する関数
  ・NimNodeオブジェクトのメソッドとして追加している？？（糖衣構文として利用するために）
    ->（これは実際には44行目で使われちえる
]#
proc typeMembers*(node: NimNode): seq[Member] {.compileTime.} = # コンパイル時にのみ呼び出し可能にするpragma（プラグマ）
  var obj: NimNode
  if node[2].kind == nnkRefTy: # 参照型 ref
    obj = node[2][0]
  elif node[2].kind == nnkPtrTy: # ポインタ型 ptr
    obj = node[2][0]
  else:
    obj = node[2]
  result = newSeq[Member]() # 空の配列用意，resultに入れてこれを返り値とする
  for id in obj[2].children: # 中に入ってるフィールドをchildrenと言ってる？
    result.add(Member(name: id[0].removePostfix.repr, typ: id[1].repr))

#[
  値をjsonオブジェクトでラップする関数
  これは元々のintやstringの型にメソッドを追加してる．ともとれる？
  視点しだい
]#
proc serializeJson*(value: int): JsonNode =
  return %* value # %* はjsonオブジェクトの組み立てDSL
proc serializeJson*(value: string): JsonNode =
  return %* value
# 今回はintとstringのみ


#[
  オブジェクトのフィールドを取得し，
  フィールドごとにシリアライズ関数を呼び出す関数を組み立てる
]#
proc genSerializeJSON*(typ: NimNode): NimNode {.compileTime.} =
  let members = typ.symbol.getImpl().typeMembers() # getImplで型や関数の実装の取得
  var procstr = "proc serializeJSON*(this: $#): JsonNode =\n" % $typ # %は文字列の埋め込み
  procstr &= "  result = newJObject()\n" # 文字列連結
  for member in members:
    procstr &= "  result[\"$1\"]=this.$1.serializeJSON()\n" % member.name
  return procstr.parseExpr() # 文字列をパース


# マクロを実装すれば完成
macro implSerialize*(typ: typed): untyped =
  return genSerializeJSON(typ)


type
  School* = object
    since*: int
    location*: string
    name*: string

implSerialize(School) # オブジェクトをJSON形式にシリアライズ

var sch = School(since: 2016, location: "okinawa", name: "N high school")
echo sch.serializeJSON().pretty()