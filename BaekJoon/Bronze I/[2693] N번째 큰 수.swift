let t = Int(readLine()!)!
let n = 3

for _ in 0..<t {
    let input = readLine()!
        .split(separator: " ")
        .compactMap { Int($0) }
        .sorted(by: { $0 > $1 })
    print(input[n - 1])
}
