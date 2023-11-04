let vowels = ["a", "e", "i", "o", "u"]
while true {
    let input = readLine()!
    
    guard input != "#" else { break }
    
    let filtered = input.lowercased().filter { vowels.contains(String($0)) }
    print(filtered.count)
}
