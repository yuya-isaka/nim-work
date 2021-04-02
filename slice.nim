
var
    a = "Nim is a programming language."
    b = "Slices are useless."

echo a[7..12]
b[11..^2] = "useful"
echo b

echo b[0..<b.len-1]
echo b[0..b.len-1]
echo b[0..1]