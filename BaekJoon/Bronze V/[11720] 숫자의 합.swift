var S = readLine()!
let i = Int(readLine()!)!

var answer = Character(Unicode.Scalar.init(65))
for _ in 0..<i {
    answer = S.removeFirst()
}

print(answer)
