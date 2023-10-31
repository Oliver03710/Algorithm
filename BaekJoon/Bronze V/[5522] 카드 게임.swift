import Foundation

var answer = 0

(0..<5).forEach { _ in
    answer += Int(readLine()!)!
}

print(answer)
