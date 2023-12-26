let t = Int(readLine()!)!

for _ in 0..<t {
    let n = Int(readLine()!)!
    var dic = [String: Int]()
    for _ in 0..<n {
        let input = readLine()!.split(separator: " ").map { String($0) }
        
        dic[input[0]] = Int(input[1]) ?? 0
    }
    
    print(dic.sorted(by: { $0.value > $1.value }).first?.key ?? "0")
}
