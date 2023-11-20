let input = readLine()!
    .split(separator: " ")
    .compactMap { String($0).reversed() }
    .compactMap { Int(String($0)) }

print(input.max()!)
