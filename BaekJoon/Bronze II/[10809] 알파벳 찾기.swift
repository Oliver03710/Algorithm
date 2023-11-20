let s = readLine()!
var arr = Array(repeating: -1, count: 26)

for (index, value) in s.enumerated() {
    if arr[Int(value.asciiValue!) - 97] == -1 {
        arr[Int(value.asciiValue!) - 97] = index
    }
}

arr.forEach { print($0, terminator: " ") }
