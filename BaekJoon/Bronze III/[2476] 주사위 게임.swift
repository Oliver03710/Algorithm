let n = Int(readLine()!)!

var ans = 0
for _ in 0..<n {
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let (a, b, c) = (input[0], input[1], input[2])
    
    if a == b, b == c, c == a {
        let cal = 10_000 + a * 1_000
        if ans < cal {
            ans = cal
        }
        continue
    }
    
    if a != b, b != c, c != a {
        let cal = max(max(a, b), c) * 100
        if ans < cal {
            ans = cal
        }
        continue
    }
    
    if a == b {
        let cal = 1_000 + a * 100
        if ans < cal {
            ans = cal
        }
    } else if b == c {
        let cal = 1_000 + b * 100
        if ans < cal {
            ans = cal
        }
    } else {
        let cal = 1_000 + c * 100
        if ans < cal {
            ans = cal
        }
    }
}

print(ans)
