let input = readLine()!.split(separator: " ").compactMap { Int($0) }
print(String(input[0], radix: input[1]).uppercased())
