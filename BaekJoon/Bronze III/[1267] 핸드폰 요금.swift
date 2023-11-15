let _ = Int(readLine()!)!
let time = readLine()!
    .split(separator: " ")
    .compactMap { Int(String($0)) }

let y = time.map { 10 * (($0 / 30) + 1) }.reduce(0, +)
let m = time.map { 15 * (($0 / 60) + 1) }.reduce(0, +)

print(y < m ? "Y \(y)" : y == m ? "Y M \(y)" : "M \(m)")
