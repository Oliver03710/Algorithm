var arr: [[Int]] = []
var ans = 0
var position = ""

for _ in 0..<9 {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    arr.append(input)
}

for i in 0...arr.count - 1 {
    for j in 0...arr[i].count - 1 {
        if arr[i][j] >= ans {
            ans = arr[i][j]
            position = "\(i + 1) \(j + 1)"
        }
    }
}

print(ans)
print(position)
