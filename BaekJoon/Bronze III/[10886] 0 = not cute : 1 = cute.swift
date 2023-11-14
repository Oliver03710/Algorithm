let n = Int(readLine()!)!

var vote = [0: 0, 1: 0]
for _ in 0..<n {
    let input = Int(readLine()!)!
    vote[input]! += 1
}

if vote[0]! > vote[1]! {
    print("Junhee is not cute!")
} else {
    print("Junhee is cute!")
}
