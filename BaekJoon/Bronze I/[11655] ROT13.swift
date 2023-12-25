let input = readLine()!
var ans = ""

for char in input {
    if Int(String(char)) != nil || char == " " {
        ans += String(char)
        continue
    }
    
    guard let ascii = char.asciiValue else { continue }
    var newValue = ascii + 13
    
    if ascii >= 65, ascii <= 90, newValue > 90 {
        newValue -= 26
        
    } else if ascii >= 97, ascii <= 122, newValue > 122 {
        newValue -= 26
    }
    
    ans += String(UnicodeScalar(newValue))
}

print(ans)
