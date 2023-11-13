let n = Int(readLine()!)!

for i in 1...(2 * n - 1) {
    var ans = ""
    if i <= n {
        for _ in 0..<(i) {
            ans += "*"
        }
        
        for _ in 0..<(2 * (n - i)) {
            ans += " "
        }
        
        for _ in 0..<(i) {
            ans += "*"
        }
        
    } else {
        for _ in 0..<(i - 2 * (i - n)) {
            ans += "*"
        }
        
        for _ in 0..<(2 * (i - n)) {
            ans += " "
        }
        
        for _ in 0..<(i - 2 * (i - n)) {
            ans += "*"
        }
    }
    
    print(ans)
}
