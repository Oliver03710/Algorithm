let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var count = 1

while input.filter({ count % $0 == 0 }).count < 3 {
    count += 1
}

print(count)
