let input = readLine()!.split(separator: " ").map { Int($0)! }
let r1 = input[0]
let s = input[1]

let cal = 2 * s - r1
print(cal)
