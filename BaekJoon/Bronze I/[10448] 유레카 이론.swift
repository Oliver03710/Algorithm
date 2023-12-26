let t = Int(readLine()!)!

for _ in 0..<t {
    let k = Int(readLine()!)!
    var arr = [Int]()
    var max = 1
    var ans = 0
    
    for n in max...45 {
        if k < n * (n + 1) / 2 {
            max = n
            break
        }
        arr.append(n * (n + 1) / 2)
    }
    
    for x in 0..<max-1 {
        if ans == 1 {
            break
        }
        
        for y in x..<max-1 {
            if ans == 1 {
                break
            }
            
            for z in y..<max-1 {
                if arr[x] + arr[y] + arr[z] == k {
                    ans = 1
                    break
                }
            }
        }
    }
    
    print(ans)
}
