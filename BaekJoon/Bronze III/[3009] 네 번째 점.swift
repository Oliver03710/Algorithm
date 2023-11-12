var x = Array<Int>()
var y = Array<Int>()

(0..<3).forEach { _ in
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    
    if !x.contains(input[0]) {
        x.append(input[0])
    } else if let index = x.firstIndex(of: input[0]) {
        x.remove(at: index)
    }
    
    if !y.contains(input[1]) {
        y.append(input[1])
    } else if let index = y.firstIndex(of: input[1]) {
        y.remove(at: index)
    }
}

print("\(x[0]) \(y[0])")
