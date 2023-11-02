let n = Int(readLine()!)!

for i in stride(from: n, to: 0, by: -1) {
    for _ in 0..<i {
        print("*", terminator: "")
    }
    print()
}
