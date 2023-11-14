while true {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    guard input != [0, 0, 0] else { break }
    
    let sorted = input.sorted()
    
    if sorted[2] >= sorted[0] + sorted[1] {
        print("Invalid")
        continue
    }
    
    if sorted[2] == sorted[0],
          sorted[2] == sorted[1],
          sorted[1] == sorted[0] {
        print("Equilateral")
        continue
    }
    
    if sorted[2] != sorted[0],
          sorted[2] != sorted[1],
          sorted[1] != sorted[0] {
        print("Scalene")
        continue
    }
    
    print("Isosceles")
}
