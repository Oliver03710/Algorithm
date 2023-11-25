var count = 0
for i in 1...8 {
    let line = readLine()!
    let arr = Array(1...8).filter { $0 % 2 == i % 2 }
    for (index, value) in line.enumerated() {
        if arr.contains(index + 1) && value == "F" {
            count += 1
        }
    }
}

print(count)
