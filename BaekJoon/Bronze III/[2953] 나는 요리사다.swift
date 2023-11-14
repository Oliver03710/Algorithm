var totalSum = 0
var person = 0

for i in 1...5 {
    let sum = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
        .reduce(0, +)
    
    if totalSum < sum {
        totalSum = sum
        person = i
    }
}

print("\(person) \(totalSum)")
