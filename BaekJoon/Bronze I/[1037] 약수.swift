let n = Int(readLine()!)!
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
print(input.min()! * input.max()!)
