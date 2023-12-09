var apartments = [[Int]](repeating: [Int](repeating: 0, count: 15), count: 15)

for i in 1...14 {
    apartments[0][i] = i
    apartments[i][1] = 1
}

for i in 1...14 {
    for j in 2...14 {
        apartments[i][j] = apartments[i - 1][j] + apartments[i][j - 1]
    }
}

let t = Int(readLine()!)!
for _ in 0..<t {
    let k = Int(readLine()!)!
    let n = Int(readLine()!)!
    print(apartments[k][n])
}
