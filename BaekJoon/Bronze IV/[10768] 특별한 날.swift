let month = Int(readLine()!)!
let day = Int(readLine()!)!

if month < 2 {
    print("Before")
} else if month > 2 {
    print("After")
} else {
    if day < 18 {
        print("Before")
    } else if day > 18 {
        print("After")
    } else {
        print("Special")
    }
}
