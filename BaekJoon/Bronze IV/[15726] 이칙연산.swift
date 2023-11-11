let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = input[0]
let b = input[1]
let c = input[2]

print(a * max(b, c) / min(b, c))
