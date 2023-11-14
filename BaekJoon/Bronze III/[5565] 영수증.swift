let price = Int(readLine()!)!
var sum = 0
for _ in 0..<9 {
    sum += Int(readLine()!)!
}

print(price - sum)
