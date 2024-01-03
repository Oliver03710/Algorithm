let n = Int(readLine()!)!
var people = Array<(weight: Int, height: Int)>()
var ranks = Array<Int>()

for _ in 0..<n {
    let input = readLine()!.split(separator: " ").compactMap { Int($0) }
    people.append((input[0], input[1]))
}

for i in 0..<people.count {
    var rank = 1
    for j in 0..<people.count {
        if people[i].weight < people[j].weight && people[i].height < people[j].height {
            rank += 1
        }
    }
    ranks.append(rank)
}

ranks.forEach { print($0, terminator: " ") }
