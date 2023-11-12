let n = Int(readLine()!)!

var answer = Array<String>()

(1...n).forEach { i in
    let spaces = Array(repeating: " ", count: n - i).joined()
    let stars = Array(repeating: "*", count: 2 * i - 1).joined()
    answer.append(spaces + stars)
}

let last = answer.popLast()!
let reversed = answer.reversed()

answer.append(last)
answer.append(contentsOf: reversed)
answer.forEach { print($0) }
