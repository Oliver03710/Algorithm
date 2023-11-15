let n = Int(readLine()!)!

var rest = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    rest += input[1] % input[0]
}

print(rest)
