let n = Int(readLine()!)!

var xs = Array<Int>()
var ys = Array<Int>()

for _ in 0..<n {
    let dot = readLine()!
        .split(separator: " ")
        .compactMap { Int(String($0)) }
    
    xs.append(dot[0])
    ys.append(dot[1])
}

if xs.count <= 1 {
    print(0)
} else {
    print((xs.max()! - xs.min()!) * (ys.max()! - ys.min()!))
}
