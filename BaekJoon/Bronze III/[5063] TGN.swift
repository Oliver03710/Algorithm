let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!
        .split(separator: " ")
        .compactMap { Int(String($0)) }
    
    if input[1] - input[2] > input[0] {
        print("advertise")
    } else if input[1] - input[2] == input[0] {
        print("does not matter")
    } else {
        print("do not advertise")
    }
}
