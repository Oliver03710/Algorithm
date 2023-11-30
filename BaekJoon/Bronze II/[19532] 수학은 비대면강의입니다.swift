let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var (a, b, c, d, e, f) = (input[0], input[1], input[2], input[3], input[4], input[5])

for x in -999...999 {
    for y in -999...999 {
        
        if a * x + b * y == c, d * x + e * y == f {
            print(x, terminator: " ")
            print(y)
            break
        }
    }
}
