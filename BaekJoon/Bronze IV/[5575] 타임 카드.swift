for _ in 0..<3 {
    let workTime = readLine()!.split(separator: " ").map { Int(String($0))! }
    var hour = 0
    var min = 0
    var sec = 0
    
    hour = workTime[3] - workTime[0]
    min = workTime[4] - workTime[1]
    sec = workTime[5] - workTime[2]
    
    if sec < 0 {
        sec += 60
        min -= 1
    }
    
    if min < 0 {
        min += 60
        hour -= 1
    }
    
    print("\(hour) \(min) \(sec)")
}
