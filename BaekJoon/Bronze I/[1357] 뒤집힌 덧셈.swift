let input = readLine()!
    .split(separator: " ")
    .map { String($0.reversed()) }
    .compactMap { Int($0) }
    .reduce(0, +)

print(Int(String((String(input).reversed())))!)
