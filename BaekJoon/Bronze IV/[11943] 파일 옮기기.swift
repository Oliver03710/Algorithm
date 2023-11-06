let first = readLine()!.split(separator: " ").map { Int(String($0))! }
let second = readLine()!.split(separator: " ").map { Int(String($0))! }

let apples = first[0] + second[1]
let oranges = first[1] + second[0]
print(min(apples, oranges))
