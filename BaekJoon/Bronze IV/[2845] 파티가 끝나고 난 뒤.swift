let input = readLine()!.split(separator: " ").map({ Int(String($0))! }).reduce(1, *)
let people = readLine()!.split(separator: " ").map({ Int(String($0))! - input })

people.forEach {
    print($0, terminator: " ")
}
