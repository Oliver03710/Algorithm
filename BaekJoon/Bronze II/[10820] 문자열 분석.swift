while let n = readLine() {
    var lowerCases = 0
    var upperCases = 0
    var numbers = 0
    var emptySpaces = 0
    
    for char in n {
        if char.isLowercase {
            lowerCases += 1
        } else if char.isUppercase {
            upperCases += 1
        } else if char == " " {
            emptySpaces += 1
        } else if let num = Int(String(char)) {
            numbers += 1
        }
    }
    
    print(lowerCases, terminator: " ")
    print(upperCases, terminator: " ")
    print(numbers, terminator: " ")
    print(emptySpaces)
}
