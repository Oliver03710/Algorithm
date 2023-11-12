let input = readLine()!.split(separator: " ").map { Int(String($0))! }

print(input.sorted()[1])
