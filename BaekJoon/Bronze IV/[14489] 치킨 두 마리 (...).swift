let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let sum = input[0] + input[1]
let c = Int(readLine()!)!

if sum >= 2 * c {
    print(sum - 2 * c)
} else {
    print(sum)
}
