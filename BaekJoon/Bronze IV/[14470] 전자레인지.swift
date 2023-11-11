let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!
let d = Int(readLine()!)!
let e = Int(readLine()!)!

if a < 0 {
    print(abs(a) * c + d + (e * b))
} else if a == 0 {
    print(d + (e * b))
} else {
    print(e * (b - a))
}
