while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    guard input != [0, 0] else { break }
    
    let a = input[0]
    let b = input[1]
    
    if a / b == 0 && a % b != 0 {
        print("factor")
        
    } else if a / b != 0 && a % b == 0 {
        print("multiple")
        
    } else {
        print("neither")
    }
}
