var a = Array<Int>()
var b = Array<Int>()

for _ in 0..<4 {
    let input = Int(readLine()!)!
    a.append(input)
}

for _ in 0..<2 {
    let input = Int(readLine()!)!
    b.append(input)
}

let aSorted = a.sorted(by: >)
let bSorted = b.sorted(by: >)

print(aSorted[0] + aSorted[1] + aSorted[2] + bSorted[0])
