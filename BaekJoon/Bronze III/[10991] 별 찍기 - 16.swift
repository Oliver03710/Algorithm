let n = Int(readLine()!)!

for i in 1...n {
    var stars = ""
    stars += Array(repeating: " ", count: n - i)
    stars += Array(repeating: "*", count: i).joined(separator: " ")
    print(stars)
}
