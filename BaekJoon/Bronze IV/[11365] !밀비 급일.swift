while true {
    let input = readLine()!
    
    guard input != "END" else { break }
    
    let reversed = String(input.reversed())
    print(reversed)
}
