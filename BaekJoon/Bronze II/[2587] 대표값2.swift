var nums = Array<Int>()
for _ in 0..<5 {
    let num = Int(readLine()!)!
    nums.append(num)
}
print(nums.reduce(0, +) / nums.count)
print(nums.sorted()[2])
