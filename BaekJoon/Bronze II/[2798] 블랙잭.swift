let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let nums = readLine()!.split(separator: " ").compactMap { Int($0) }

var ans = 0

for i in 0..<input[0] {
    for j in i + 1..<input[0] {
        for k in j + 1..<input[0] {
            if nums[i] + nums[j] + nums[k] <= input[1] {
                ans = max(ans, nums[i] + nums[j] + nums[k])
            }
        }
    }
}

print(ans)
