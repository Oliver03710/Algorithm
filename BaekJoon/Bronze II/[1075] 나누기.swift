let n = Int(readLine()!)!
let f = Int(readLine()!)!

let start = (n / 100) * 100
let end = start + 100

for i in start...end {
    if i % f == 0 {
        let str = String(i % 100)
        print(str.count == 1 ? "0\(str)" : str)
        break
    }
}
