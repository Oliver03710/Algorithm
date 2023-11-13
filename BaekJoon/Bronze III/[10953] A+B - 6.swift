let t = Int(readLine()!)!

(0..<t).forEach { _ in
    let sum = readLine()!.split(separator: ",").map { Int(String($0))! }.reduce(0, +)
    print(sum)
}
