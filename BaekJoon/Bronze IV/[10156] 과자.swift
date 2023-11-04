let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let k = input[0]
let n = input[1]
let m = input[2]

let cal = k * n - m

print(cal < 0 ? "0" : cal)
