let date = Int(readLine()!)!
let numbers = readLine()!.split(separator: " ").map { Int(String($0))! }
let count = numbers.filter({ $0 == date }).count
print(count)
