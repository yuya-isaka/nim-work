
proc yes(question: string): bool =
  echo question, " (はい/いいえ)"
  while true:
    case readLine(stdin)
    of "はい": return true
    of "いいえ": return false
    else: echo "はいかいいえで答えて"

if yes("全ての君の重要なファイルを消そうか？"):
  echo "デイブ，申し訳ない．俺にはできない"
else:
  echo "君も私と同じくらい何が問題か分かっているようだ"