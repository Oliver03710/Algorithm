let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let (a, b) = (input[0], input[1])
    
    var ans = 1
    for _ in 0..<b {
        ans *= a
        ans %= 10
    }
    
    print(ans == 0 ? 10 : ans)
}
