let t = Int(readLine()!)!

for _ in 0..<t {
    let _ = readLine()
    let n = readLine()!
        .split(separator: " ")
        .compactMap { Int(String($0)) }
        .reduce(0, +)
    
    print(n)
}
