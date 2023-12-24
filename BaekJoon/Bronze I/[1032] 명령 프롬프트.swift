let n = Int(readLine()!)!
var ans = Array<String>()

for _ in 0..<n {
    let input = readLine()!.compactMap { String($0) }
    
    if ans.isEmpty {
        ans = input
        continue
    }
    
    for index in 0...ans.count - 1 {
        if input[index] != ans[index] {
            ans[index] = "?"
        }
    }
}

print(ans.joined())
