from strutils import parseInt

echo "数字を入力してください: "
let n = parseInt(readLine(stdin))
case n
of 0..2, 4..7: echo "入力した文字は0-2 4-7のどれかー"
of 3, 8: echo "入力した文字は３か８"
else: discard