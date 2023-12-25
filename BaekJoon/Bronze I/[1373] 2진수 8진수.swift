guard var input = readLine() else { fatalError() }
input = String(input.reversed())

while input.count % 3 != 0 {
    input += "0"
}

while !input.isEmpty {
    var num = ""
    for _ in 0..<3 {
        num += String(input.popLast()!)
    }
    
    print(Int(num, radix: 2)!, terminator: "")
}
