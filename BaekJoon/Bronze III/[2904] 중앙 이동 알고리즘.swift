let n = Int(readLine()!)!
var edge = 2

for _ in 0..<n {
    edge = 2 * edge - 1
}

print(edge * edge)
