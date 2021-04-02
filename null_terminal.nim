
var s = "aabaabaa"
for i in 0..len(s):
  if s[i] == 'a' and s[i+1] == 'b':
    echo $i