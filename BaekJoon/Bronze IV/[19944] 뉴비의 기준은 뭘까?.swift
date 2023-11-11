let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let m = input[1]

if m <= 2 {
    print("NEWBIE!")
} else if m <= n && m > 2 {
    print("OLDBIE!")
} else {
    print("TLE!")
}
