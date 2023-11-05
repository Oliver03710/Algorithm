let l = Int(readLine()!)!
let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!

var maxA = a / c
maxA += a % c != 0 ? 1 : 0

var maxB = b / d
maxB += b % d != 0 ? 1 : 0

print(l - max(maxA, maxB))
