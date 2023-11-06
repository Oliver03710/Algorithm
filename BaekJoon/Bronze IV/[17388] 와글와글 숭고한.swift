let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let s = input[0]
let k = input[1]
let h = input[2]

if s + k + h >= 100 {
    print("OK")
} else if s - k < 0 && s - h < 0 {
    print("Soongsil")
} else if k - s < 0 && k - h < 0 {
    print("Korea")
} else if h - k < 0 && h - s < 0 {
    print("Hanyang")
}
