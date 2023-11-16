let n = Int(readLine()!)!

var chang = 100
var sang = 100

for _ in 0..<n {
    let dices = readLine()!.split(separator: " ").compactMap { Int($0) }
    if dices[0] > dices[1] {
        sang -= dices[0]
    } else if dices[0] < dices[1] {
        chang -= dices[1]
    }
}

print(chang)
print(sang)
