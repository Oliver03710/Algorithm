let input = readLine()!.split(separator: " ").map { Int(String($0))! }
var answer = Array<String>()
for _ in 0..<input[0] {
    let input = readLine()!
    answer.append(input)
}

answer.forEach { str in
    print(String(str.reversed()), terminator: "")
    print()
}
