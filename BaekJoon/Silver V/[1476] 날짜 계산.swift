let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (E, S, M) = (input[0], input[1], input[2])
var (e, s, m) = (0, 0, 0)
var count = 0

while e != E || s != S || m != M {
    count += 1
    e += 1
    s += 1
    m += 1
    
    if e > 15 {
        e = 1
    }
    
    if s > 28 {
        s = 1
    }
    
    if m > 19 {
        m = 1
    }
}

print(count)
