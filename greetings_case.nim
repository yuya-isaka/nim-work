let name = readLine(stdin)

case name
of "":
  echo "憐れな"
of "name":
  echo "変な名前だ"
of "ブライアン":
  echo "かっこいいな"
else:
  echo "やあ", name, "!"