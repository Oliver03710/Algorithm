if let input = readLine(),
   let n = Int(input) {
    for i in 1...(2 * n - 1) {
        var stars = ""
        stars += Array(repeating: " ", count: i > n ? i - n : n - i).joined()
        stars += Array(repeating: "*", count: i > n ? (i - 2 * (i % n)) : i).joined()
        print(stars)
    }
}
