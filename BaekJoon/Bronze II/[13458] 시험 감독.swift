let n = Int(readLine()!)!
let a = readLine()!.split(separator: " ").compactMap { Int($0) }
let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (b, c) = (input[0], input[1])

var counts = n

for num in a {
    if num - b > 0 {
        counts += (num - b) / c
    }
    
    if (num - b) % c != 0 && num - b >= 0 {
        counts += 1
    }
}

print(counts)
