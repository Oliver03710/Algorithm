var pay = 1000 - Int(readLine()!)!
var sum = 0

if pay / 500 != 0 {
    sum += pay / 500
    pay %= 500
}

if pay / 100 != 0 {
    sum += pay / 100
    pay %= 100
}

if pay / 50 != 0 {
    sum += pay / 50
    pay %= 50
}

if pay / 10 != 0 {
    sum += pay / 10
    pay %= 10
}

if pay / 5 != 0 {
    sum += pay / 5
    pay %= 5
}

if pay / 1 != 0 {
    sum += pay / 1
    pay %= 1
}

print(sum)
