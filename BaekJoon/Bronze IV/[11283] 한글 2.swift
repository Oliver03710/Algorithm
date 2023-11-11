let str = Character(readLine()!)

for char in str.unicodeScalars {
    print(char.value - 44031)
}
