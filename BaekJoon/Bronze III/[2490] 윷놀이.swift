enum Yut: Int {
    case a = 3, b = 2, c = 1, d = 0, e = 4
    
    var type: String {
        switch self {
        case .a: return "A"
        case .b: return "B"
        case .c: return "C"
        case .d: return "D"
        case .e: return "E"
        }
    }
}

for _ in 0..<3 {
    let sum = readLine()!
        .split(separator: " ")
        .map { Int(String($0))! }
        .reduce(0, +)
    
    print(Yut(rawValue: sum)?.type ?? "")
}
