let n = Int(readLine()!)!
let scores = readLine()!.split(separator: " ").map { Int(String($0))! }

var multiply = 1
var ans = 0

for score in scores {
    guard score != 0 else {
        multiply = 1
        continue
    }
    ans += score * multiply
    multiply += 1
}

print(ans)
