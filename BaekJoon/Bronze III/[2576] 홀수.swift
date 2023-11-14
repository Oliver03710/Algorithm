var ans = [Int]()

for _ in 0..<7 {
    let input = Int(readLine()!)!
    if input % 2 != 0 {
        ans.append(input)
    }
}

if ans.isEmpty {
    print(-1)
} else {
    print(ans.reduce(0, +))
    print(ans.min()!)
}

