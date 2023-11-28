let l = Int(readLine()!)!
let str = readLine()!
var sum = 0

for (index, value) in str.enumerated() {
    var ans = 1
    for _ in 0..<index {
        ans *= 31
    }
    
    if let num = value.asciiValue {
        sum += (Int(num) - 96) * ans
    }
}

print(sum)
