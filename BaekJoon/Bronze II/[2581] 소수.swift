import Foundation

let m = Int(readLine()!)!
let n = Int(readLine()!)!
var arr = Array<Int>()

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

for i in m...n {
    if isPrime(i) {
        arr.append(i)
    }
}

if arr.isEmpty {
    print(-1)
} else {
    print(arr.reduce(0, +))
    print(arr.min()!)
}
