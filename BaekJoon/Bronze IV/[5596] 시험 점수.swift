let min = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
let man = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
print(min >= man ? min : man)
