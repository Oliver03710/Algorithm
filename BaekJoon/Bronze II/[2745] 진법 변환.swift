let input = readLine()!.split(separator: " ")
let (n, b) = (input[0], Int(input[1])!)
print(Int(n, radix: b) ?? 0)
