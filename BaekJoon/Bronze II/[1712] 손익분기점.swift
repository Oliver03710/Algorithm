let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (a, b, c) = (input[0], input[1], input[2])
    
print(b >= c ? -1 : a / (c - b) + 1)
