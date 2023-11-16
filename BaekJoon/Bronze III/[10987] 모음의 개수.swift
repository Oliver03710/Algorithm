let word = readLine()!

let vowels: [Character] = ["a", "e", "i", "o", "u"]
var counts = 0

for char in word {
    if vowels.contains(char) {
        counts += 1
    }
}

print(counts)
