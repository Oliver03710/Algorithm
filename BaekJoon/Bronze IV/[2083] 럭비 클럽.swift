while true {
    let input = readLine()!.split(separator: " ").map { String($0) }
    let name = input[0]
    let age = Int(input[1])!
    let weight = Int(input[2])!
    
    guard name != "#" && age != 0 && weight != 0 else { break }
    
    if age > 17 || weight >= 80 {
        print("\(name) Senior")
    } else {
        print("\(name) Junior")
    }
}
