template echoBlock( blockName, x: untyped ): untyped =
  echo "====== ", astToStr(blockName), " ======"
  echo astToStr( x )
  echo "\n=================="
  x

echoBlock(test): # :を使ってブロック文ごと渡す
  var x: int
  x = 10
  echo x