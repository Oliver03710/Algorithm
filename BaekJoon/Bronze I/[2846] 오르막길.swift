let n = Int(readLine()!)!
let pi = readLine()!.split(separator: " ").compactMap { Int($0) }
var startingHill = pi[0]
var lastHill = pi[0]
var ans = 0

for i in 1..<n {
    if pi[i] <= lastHill {
        startingHill = pi[i]
        lastHill = pi[i]
    } else {
        lastHill = pi[i]
    }
    
    ans = max(ans, lastHill - startingHill)
}

print(ans)
