let n = Int(readLine()!)!
let x = n % 8
if x > 5 {
    print(10 - x)
} else if x <= 5 && x > 0 {
    print(x)
} else if x == 0 {
    print(2)
}
