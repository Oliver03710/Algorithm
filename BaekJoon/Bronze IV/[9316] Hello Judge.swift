var x = Int(readLine()!)!
let n = Int(readLine()!)!

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int($0)! }
    let a = input[0]
    let b = input[1]
    
    x -= a * b
}

print(x == 0 ? "Yes" : "No")
