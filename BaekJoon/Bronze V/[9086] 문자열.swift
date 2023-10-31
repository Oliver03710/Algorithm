import Foundation

var intArray = Array<Int>()

(0..<3).forEach { _ in
    let input = Int(readLine()!)!
    intArray.append(input)
}

print(intArray.sorted()[1])
