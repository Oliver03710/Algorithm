let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let x = input[0]
let y = input[1]
let w = input[2]
let h = input[3]

let answer: [Int] = [w - x, x, h - y, y]
print(answer.sorted()[0])
