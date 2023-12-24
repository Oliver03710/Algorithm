let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var (a, b) = (input[0], input[1])
var count = 1
var nums = [Int]()

while b > 0 {
    nums += Array(repeating: count, count: count)
    b -= count
    count += 1
}

print(nums[a-1...input[1]-1].reduce(0, +))
