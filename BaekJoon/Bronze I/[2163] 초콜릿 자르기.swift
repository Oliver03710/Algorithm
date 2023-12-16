let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, m) = (input[0], input[1])
print(n * m - 1)
