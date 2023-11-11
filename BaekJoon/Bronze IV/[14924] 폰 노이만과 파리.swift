let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let S = input[0]
let T = input[1]
let D = input[2]

print(T * (D / (2 * S)))
