let t = Int(readLine()!)!

(0..<t).forEach { _ in
    let input = readLine()!.split(separator: " ").map { Int(String($0))! }
    let h = input[0]
    let n = input[2]
    
    let roomNum = (n / h)
    let floor = n % h
    
    var room = 0
        
    room += floor == 0 ? h * 100 : floor * 100
    room += floor == 0 ? roomNum : roomNum + 1
    print(room)
}
