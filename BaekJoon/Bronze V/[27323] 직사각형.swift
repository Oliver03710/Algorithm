let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let a = input[0]
let b = input[1]

let sum = (a + b) * (a - b)
print(sum)
