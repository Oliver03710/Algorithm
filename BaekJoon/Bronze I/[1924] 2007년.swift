let input = readLine()!.split(separator: " ").compactMap { Int($0) }
var date = ["SUN", "MON", "TUE", "WED", "THU", "FRI", "SAT"]
var days = input[1]

if input[0] > 1 {
    for i in 1...(input[0] - 1) {
        if i == 2 {
            days += 28
        } else if i == 4 || i == 6 || i == 9 || i == 11 {
            days += 30
        } else {
            days += 31
        }
    }
}

print(date[(days % 7)])
