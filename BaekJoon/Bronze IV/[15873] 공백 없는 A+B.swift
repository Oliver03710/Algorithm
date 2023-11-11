let input = readLine()!.map { String($0) }

if input.count <= 2 {
    print(Int(input[0])! + Int(input[1])!)
    
} else if input.count == 3 && input[1] == "0" {
    print(Int(input[0] + input[1])! + Int(input[2])!)
    
} else if input.count == 3 && input[1] != "0" {
    print(Int(input[0])! + Int(input[1] + input[2])!)
    
} else {
    print(Int(input[0] + input[1])! + Int(input[2] + input[3])!)
}
