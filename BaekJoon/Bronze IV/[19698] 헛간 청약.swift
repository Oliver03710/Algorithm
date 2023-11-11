let input = readLine()!.split(separator: " ").map { Int(String($0))! }

let w = input[1] / input[3]
let h = input[2] / input[3]

print(min(w * h, input[0]))
