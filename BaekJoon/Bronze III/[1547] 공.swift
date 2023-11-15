let m = Int(readLine()!)!
var ball = [1, 0, 0]
for _ in 0..<m {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! - 1 }
    let temp = ball[input[0]]
    ball[input[0]] = ball[input[1]]
    ball[input[1]] = temp
}

if let index = ball.firstIndex(of: 1) {
    print(index + 1)
} else {
    print(-1)
}
