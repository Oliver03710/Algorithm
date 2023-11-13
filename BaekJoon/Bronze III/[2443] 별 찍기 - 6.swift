let n = Int(readLine()!)!

var answer = Array<String>()

(1...n).forEach { i in
    let spaces = Array(repeating: " ", count: i - 1).joined()
    let stars = Array(repeating: "*", count: 2 * (n - i) + 1).joined()
    answer.append(spaces + stars)
}

answer.forEach { print($0) }
