var t = Int(readLine()!)!

let a = t / 300
t %= 300

let b = t / 60
t %= 60

let c = t / 10
t %= 10

print(t != 0 ? -1 : "\(a) \(b) \(c)")
