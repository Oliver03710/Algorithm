let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    let str = String(n, radix: 2)
    let reversed = str.reversed()
    
    for (index, value) in reversed.enumerated() {
        if value == "1" {
            print(index, terminator: " ")
        }
    }
    
    print()
}
