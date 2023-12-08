import Foundation

let input = readLine()!.split(separator: " ").compactMap { Double($0) }
let (a, b, v) = (input[0], input[1], input[2])
var x = ceil((v - b) / (a - b))
print(Int(x))
