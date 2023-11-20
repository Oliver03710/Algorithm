let word = readLine()!
let dic = ["ABC": 3,
           "DEF": 4,
           "GHI": 5,
           "JKL": 6,
           "MNO": 7,
           "PQRS": 8,
           "TUV": 9,
           "WXYZ": 10]
var time = 0

for char in word {
    for (index, value) in dic {
        if index.contains(char) {
            time += value
        }
    }
}

print(time)
