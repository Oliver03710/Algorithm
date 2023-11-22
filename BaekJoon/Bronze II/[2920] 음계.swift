let input = readLine()!.split(separator: " ").compactMap { Int($0) }
let arr = Array(1...8)

if input == arr {
    print("ascending")
} else if input == arr.reversed() {
    print("descending")
} else {
    print("mixed")
}
