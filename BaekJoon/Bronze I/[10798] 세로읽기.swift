var dic = Dictionary<Int, String>()

for _ in 0..<5 {
    let input = readLine()!.map { String($0) }
    
    for (index, value) in input.enumerated() {
        if dic[index] == nil {
            dic[index] = value
        } else {
            dic[index]! += value
        }
    }
}

print(dic.sorted(by: { $0.key < $1.key }).map { $0.value }.joined())
