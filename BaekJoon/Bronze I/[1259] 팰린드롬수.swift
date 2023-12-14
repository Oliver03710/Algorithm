while let input = readLine() {
    guard input != "0" else { break }
    let converted = String(Int(String(input.reversed()))!)
    print(input == converted ? "yes" : "no")
}
