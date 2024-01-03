let n = Int(readLine()!)!
var count = 0
var num = 666

while count != n {
    var temp = num
    while temp >= 666 {
        if temp % 1000 == 666 {
            count += 1
            break
        } else {
            temp /= 10
        }
    }
    num += 1
}

print(num - 1)
