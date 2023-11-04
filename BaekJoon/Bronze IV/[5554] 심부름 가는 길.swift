var sum = 0

for _ in 0..<4 {
    sum += Int(readLine()!)!
}

print(sum / 60)
print(sum % 60)
