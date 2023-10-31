import Foundation

while true {
    let input = Int(readLine()!)!
    
    if input == 0 {
        break
        
    } else {
        let answer = (0...input).reduce(0, +)
        print(answer)
    }
}
