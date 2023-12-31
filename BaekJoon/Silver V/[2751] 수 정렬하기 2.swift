let n = Int(readLine()!)!
var arr = [Int]()

for _ in 0..<n {
    let num = Int(readLine()!)!
    arr.append(num)
}

arr.sorted().map { print($0) }
