let n = Int(readLine()!)!
var users = Array<(age: Int, name: String)>()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ")
    users.append((Int(input[0])!, String(input[1])))
}

users.sort { $0.age < $1.age }
users.forEach { print($0.age, $0.name) }
