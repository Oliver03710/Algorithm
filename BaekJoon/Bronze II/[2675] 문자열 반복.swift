let t = Int(readLine()!)!

for _ in 0..<t {
    let input = readLine()!.split(separator: " ").compactMap { String($0) }
    let r = Int(input[0])!
    let s = input[1]
    
    for char in s {
        for _ in 0..<r {
            print(char, terminator: "")
        }
    }
    print()
}
