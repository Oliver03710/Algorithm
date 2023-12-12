let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    
    var max = input.max()!
    var min = input.min()!
    var r = max % min
    
    while r > 0 {
        max = min
        min = r
        r = max % min
    }
    
    print(input[0] * input[1] / min)
}
