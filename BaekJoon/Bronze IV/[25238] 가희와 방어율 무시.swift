let input = readLine()!.split(separator: " ").map { Float(String($0))! }
let a = input[0]
let b = input[1]
let cal = a - (a * b / 100)

print(cal >= 100 ? 0 : 1)
