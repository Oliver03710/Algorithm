let n = Int(readLine()!)!

for i in 1...n {
    var stars = ""
    stars += String(repeating: " ",
                    count: n - i)
    
    stars += Array(repeating: "*",
                   count: i == n
                   ? 2 * i - 1
                   : i != 1 ? 2 : 1)
    .joined(separator: i != n
            ? String(repeating: " ",
                     count:
                        i == 1
                     ? 0
                     : 2 * i - 3)
            : "")
    print(stars)
}
