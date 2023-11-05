while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }.reduce(0, +)
    
    guard input != 0 else { break }
    
    print(input)
}
