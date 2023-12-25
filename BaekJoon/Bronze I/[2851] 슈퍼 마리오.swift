var sum = 0

for _ in 0..<10 {
    let point = Int(readLine()!)!
    
    if abs(sum - 100) >= abs(sum + point - 100) {
        sum += point
    } else {
        break
    }
}

print(sum)
