let input = readLine()!.map { String($0) }
var length = input.count
var first = Int(input[0])!
var answer = -1

while answer != first {
    answer = first * length
    first = Int(String(String(answer).first!))!
    length = String(answer).count
}

print("FA")
