let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let (n, k) = (input[0], input[1])

func factorial(_ n: Int) -> Int {
    if n < 2 {
        return 1
    }
    
    return n * factorial(n - 1)
}

print(factorial(n) / (factorial(k) * factorial(n - k)))
