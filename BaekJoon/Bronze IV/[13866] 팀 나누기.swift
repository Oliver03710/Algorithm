let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let first = input[1] - input[0]
let second = input[3] - input[2]

print(abs(second - first))
