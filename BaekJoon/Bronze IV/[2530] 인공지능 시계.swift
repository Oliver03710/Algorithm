let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let time = Int(readLine()!)!

var a = input[0]
var b = input[1]
var c = input[2]

let sec = time % 60
let min = time / 60

c += sec
if c >= 60 {
    b += c / 60
    c %= 60
}

b += min
if b >= 60 {
    a += b / 60
    b %= 60
}

if a >= 24 {
    a %= 24
}

print("\(a) \(b) \(c)")
