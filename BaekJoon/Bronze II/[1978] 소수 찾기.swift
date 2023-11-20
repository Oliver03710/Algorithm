import Foundation

let n = Int(readLine()!)!
let nums = readLine()!.split(separator: " ").compactMap { Int($0) }
var count = 0

func isPrime(_ num: Int) -> Bool {
    if num < 4 {
        return num == 1 ? false : true
    }
    
    for i in 2...Int(sqrt(Double(num))) {
        if num % i == 0 {
            return false
        }
    }
    
    return true
}

nums.forEach { num in
    if isPrime(num) {
        count += 1
    }
}

print(count)
