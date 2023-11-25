let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, m) = (input[0], input[1])

var arr = Array(1...n)

for _ in 0..<m {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }.map { $0 - 1 }
    arr[input[0]...input[1]].reverse()
}

arr.forEach { print($0, terminator: " ") }
