let n = Int(readLine()!)!
var ans = 0

for i in 1...n {
    let sum = "\(i)".compactMap { Int(String($0)) }.reduce(0, +)
    
    if sum + i == n {
        ans = i
        break
    }
}

print(ans)
