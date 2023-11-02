let input = readLine()!.split(separator: " ").map { Int($0)! }
for num in input.sorted() {
    print(num, terminator: " ")
}
