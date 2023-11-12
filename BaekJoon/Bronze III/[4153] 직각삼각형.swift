while true {
    let input = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
        .sorted()
    
    let a = input[0]
    let b = input[1]
    let c = input[2]
    
    if input == [0, 0, 0] { break }
    
    if c * c == a * a + b * b {
        print("right")
    } else {
        print("wrong")
    }
}
