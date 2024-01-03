let n = readLine()!

print(n.sorted(by: { $0 > $1 }).map({ String($0) }).joined())
