var arr = [[Int]](repeating: [Int](repeating: 0, count: 31), count: 31)

for i in 0...30 {
    for j in 0...i {
        if i == j || j == 0 {
            arr[i][j] = 1
            continue
        }
        arr[i][j] = arr[i - 1][j - 1] + arr[i - 1][j]
    }
}

func sol() {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    let (r, n) = (input[0], input[1])
    print(arr[n][r])
}

let t = Int(readLine()!)!
(0..<t).forEach { _ in sol() }
