let input = readLine()!.split(separator: " ").map { String($0) }
let a = input[0]
let b = input[1]

func bigAdd(_ a: String, _ b: String) -> String {
    let longNum = a.count >= b.count ? a.reversed().map { $0 } : b.reversed().map { $0 }
    var shortNum = b.count <= a.count ? b.reversed().map { $0 } : a.reversed().map { $0 }
    let diff = [Character](repeating: "0", count: longNum.count - shortNum.count)
    shortNum.append(contentsOf: diff)
    
    var answer = Array<String>()
    
    var carry = 0
    for i in 0..<longNum.count {
        var sum = Int(String(longNum[i]))! + Int(String(shortNum[i]))! + carry
        carry = sum / 10
        sum %= 10
        answer.append("\(sum)")
    }
    
    if carry > 0 {
        answer.append("1")
    }
    
    return answer.reversed().joined()
}

print(bigAdd(a, b))
