let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let x = readLine()!.split(separator: " ").compactMap { Int($0) }.sorted(by: >)
print(x[input[1] - 1])
