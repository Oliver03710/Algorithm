let n = Int(readLine()!)!

var num = 1
var count = 1

while num <= n {
    if num == 1 {
        num += 1
    } else {
        num += 6 * count
        count += 1
    }
}

print(count)
