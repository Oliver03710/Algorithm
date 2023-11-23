let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, m) = (input[0], input[1])

func exchange(_ num1: Int, _ num2: Int) -> (num1: Int, num2: Int) {
    let temp = num1
    let num1 = num2
    let num2 = temp
    
    return (num1, num2)
}

var arr = Array(1...n)
for _ in 0..<m {
    let action = readLine()!.split(separator: " ").compactMap { Int($0) }
    let (num1, num2) = exchange(action[0], action[1])
    let temp = arr[num1 - 1]
    arr[num1 - 1] = arr[num2 - 1]
    arr[num2 - 1] = temp
}

arr.forEach { print($0, terminator: " ") }
