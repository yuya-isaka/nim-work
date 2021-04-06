#[
  エラーが出る．
  リクエスト先のURLがhttpsの場合．
  コンパイルオプションに，-d:ssl をつけるとできる
  nim c -d:ssl -r hogehoge.nim
]#

import httpclient
import re

const url = "https://ja.wikipedia.org/wiki/特別:新着ファイル"

var client = newHttpClient() # クライアント作成
var response = client.get(url) # URLにリクエスト送ってレスポンス取得

# テスト
# echo response.body


#[
  取得したHTMLから正規表現でimgタグを抽出
  正規表現のreライブラリ
  findAll ... パターンにマッチした文字列を順番に配列に格納
]#

var elements = response.body.findAll(re"<img(.*?)>")

# テスト
# echo type(elements)
# for element in elements:
#   echo element


#[
  それぞれのimgタグからさらにsrc属性の値（画像URL）を取得
  findBounds ... パターンにマッチした部分が何文字目から何文字目までかをタプルで取得
  src=" が不要なので5から
  ..^2 は末尾から2文字目までという意味
]#
#[
  Wikipediaの投稿画像は//upload.wikimedia.org/~という形式でimgタグに設定さあれている
  画像にアクセスするためにURLを組み立てる
  画像をローカルに保存するときファイル名はそのままにする
  画像URLを/で区切り配列にして，配列の最後の要素をファイル名として取得
]#

#[
  reモジュールでエスケープ文字が使えない？
  vscodeのNimでの"""の認識がおかしい
]#
for element in elements:
  var range = element.findBounds(re"""src=\"(.*?)\"""")
  # おかしい

  var attr = element[range.first..range.last]
  var img = attr[5..^2]

  if img[0..7] == "//upload":
    img = "https:" & img
    var splited = img.split(re"/")
    var fileName = splited[high(splited)]
    client.downloadFile(img, fileName)


