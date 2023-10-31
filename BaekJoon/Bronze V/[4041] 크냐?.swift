import Foundation

while true {
    let input = readLine()!.components(separatedBy: " ")
    let firstInt = Int(String(input.first!))!
    let secondInt = Int(String(input.last!))!
    
    let calcuated = firstInt - secondInt
    if firstInt == 0 && secondInt == 0 {
        break
    } else if calcuated > 0 {
        print("Yes")
    } else if calcuated <= 0 {
        print("No")
    }
}
