let n = Int(readLine()!)!

(0..<n).forEach { i in
    let spaces = Array(repeating: " ", count: i)
    let stars = Array(repeating: "*", count: n - i)
    let answer = spaces.joined() + stars.joined()
    print(answer)
}
