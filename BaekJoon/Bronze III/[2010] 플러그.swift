let n = Int(readLine()!)!
var sum = 0

for _ in 0..<n {
    let input = Int(readLine()!)!
    sum += input
}

print(sum - (n - 1))
