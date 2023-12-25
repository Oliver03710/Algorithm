let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!
        .split(separator: " ")
        .compactMap { String($0) }
        .map { String($0.reversed()) }
    
    print(input.joined(separator: " "))
}
