let n = Int(readLine()!)!

func fibo(_ n: Int) -> Int {
    return n < 2 ? n : fibo(n - 1) + fibo(n - 2)
}

print(fibo(n))
