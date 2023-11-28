let m = Int(readLine()!)!
let n = Int(readLine()!)!
var arr = Array<Int>()
var data = Array(1...10000).map { $0 * $0 }

for i in m...n {
    if data.contains(i) {
        arr.append(i)
    }
}

if arr.isEmpty {
    print(-1)
} else {
    print(arr.reduce(0, +))
    print(arr.min()!)
}
