let firstColor = readLine()!
let secondColor = readLine()!
let number = readLine()!

let colors = [
    "black": "0",
    "brown": "1",
    "red": "2",
    "orange": "3",
    "yellow": "4",
    "green": "5",
    "blue": "6",
    "violet": "7",
    "grey": "8",
    "white": "9",
]

var ans = ""
ans += colors[firstColor] ?? ""
ans += colors[secondColor] ?? ""

for _ in 0..<(Int(colors[number] ?? "0") ?? 0) {
    ans += "0"
}

if firstColor == "black" && secondColor == "black" {
    print(0)
    
} else if ans.first! == "0" {
    ans.removeFirst()
    print(ans)
    
} else {
    print(ans)
}
