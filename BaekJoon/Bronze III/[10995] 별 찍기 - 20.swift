let n = Int(readLine()!)!

for i in 1...n {
    let stars = Array(repeating: "*", count: n).joined(separator: " ")
    
    print(i % 2 == 0 ? " \(stars)" : "\(stars)")
}
