var count = 1
while true {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    guard input != [0, 0, 0] else { break }
    let (l, p, v) = (input[0], input[1], input[2])
    
    if v % p > l {
        print("Case \(count): \(v / p * l + l)")
    } else {
        print("Case \(count): \(v / p * l + v % p)")
    }
    
    count += 1
}
