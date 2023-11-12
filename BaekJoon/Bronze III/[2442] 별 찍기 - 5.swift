let n = Int(readLine()!)!

(1...n).forEach { i in
    let spaces = Array(repeating: " ", count: n - i).joined()
    let stars = Array(repeating: "*", count: 2 * i - 1).joined()
    print(spaces + stars)
}
