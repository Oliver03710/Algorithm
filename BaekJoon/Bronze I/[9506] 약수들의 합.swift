while let n = Int(readLine()!) {
    guard n != -1 else { break }
    var nums = Array<Int>()
    
    for i in 1..<n {
        if n % i == 0 {
            nums.append(i)
        }
    }
    
    if nums.reduce(0, +) == n {
        print("\(n) = \(nums.map { String($0) }.joined(separator: " + "))")
    } else {
        print("\(n) is NOT perfect.")
    }
}
