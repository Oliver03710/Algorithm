var nums = readLine()!.split(separator: " ").compactMap { Int($0) }

while nums != [1, 2, 3, 4, 5] {
    for i in 0..<nums.count-1 {
        if nums[i] > nums[i+1] {
            nums.swapAt(i, i+1)
            print(nums.map({ String($0) }).joined(separator: " "))
        }
    }
}
