import Foundation

let firstAh = readLine()!.components(separatedBy: "h")
let secondAh = readLine()!.components(separatedBy: "h")
let calculated = firstAh.first!.count - secondAh.first!.count
print(calculated >= 0 ? "go" : "no")
