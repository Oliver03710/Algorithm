var sum = 0
var ans = Array<Int>()

for _ in 0..<4 {
    if let input = readLine() {
        var people = input
            .split(separator: " ")
            .map { Int(String($0))! }
        
        sum += people[1] - people[0]
        ans.append(sum)
    }
}

print(ans.max()!)
