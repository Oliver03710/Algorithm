import Foundation

let input = readLine()!.split(separator: " ").map { Double(String($0))! }
let (a, i): (Double, Int) = (input[0], Int(input[1]))

var songs = 0.0

while true {
    if Int(ceil(songs / a)) == i { break }
    songs += 1
}

print(Int(songs))
