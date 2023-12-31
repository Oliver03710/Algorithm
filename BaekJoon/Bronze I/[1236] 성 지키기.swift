let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, m) = (input[0], input[1])
var rows = Array(repeating: 0, count: n)
var cols = Array(repeating: 0, count: m)

for i in 0..<n {
    let guards = readLine()!.map { String($0) }
    
    for (index, value) in guards.enumerated() {
        if value == "X" {
            rows[i] = 1
            cols[index] = 1
        }
    }
}

print(max(rows.filter({ $0 == 0 }).count, cols.filter({ $0 == 0 }).count))
