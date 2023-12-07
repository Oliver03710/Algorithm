guard let input = readLine(),
      let n = Int(input) else { fatalError() }

var dic: [String: Int] = [:]

for _ in 0..<n {
    guard let name = readLine(),
          let first = name.first else { break }
    let firstStr = String(first)
    if dic[firstStr] == nil {
        dic[firstStr] = 1
    } else {
        dic[firstStr]! += 1
    }
}

let ans = dic
    .filter { $0.value >= 5 }
    .map { $0.key }
    .sorted()
    .joined()

print(ans.isEmpty ? "PREDAJA" : ans)
