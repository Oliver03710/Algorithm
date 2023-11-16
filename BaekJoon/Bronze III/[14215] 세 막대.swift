let bars = readLine()!
    .split(separator: " ")
    .compactMap { Int($0) }
    .sorted()

if bars[0] + bars[1] > bars[2] {
    print(bars.reduce(0, +))
} else {
    print(2 * (bars[0] + bars[1]) - 1)
}
