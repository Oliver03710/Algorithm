let num = Int(readLine()!)!
let seats = readLine()!
var arr = ["*"]
var couple = ""

for char in seats {
    if char == "S" {
        arr.append("\(char)")
        arr.append("*")
        
    } else if couple.isEmpty && char == "L" {
        couple = "\(char)"
        
    } else {
        couple += "\(char)"
        arr.append(couple)
        arr.append("*")
        couple = ""
    }
}

if num <= arr.filter({ $0 == "*" }).count {
    print(num)
    
} else {
   print(arr.filter({ $0 == "*" }).count)
}
