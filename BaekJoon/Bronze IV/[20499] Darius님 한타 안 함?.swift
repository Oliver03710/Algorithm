let kda = readLine()!.split(separator: "/").map { Int(String($0))! }
let k = kda[0]
let d = kda[1]
let a = kda[2]

print(k + a < d || d == 0 ? "hasu" : "gosu")
