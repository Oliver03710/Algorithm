let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var array = Array(repeating: 0, count: input[0])
let m = input[1]

(0..<m).forEach { _ in
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    (input[0]...input[1]).forEach { array[$0 - 1] = input[2] }
}

array.forEach { print($0, terminator: " ") }
