let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let (a, b, c, d) = (input[0], input[1], input[2], input[3])

let sum1 = Int("\(a)\(b)")!
let sum2 = Int("\(c)\(d)")!

print(sum1 + sum2)
