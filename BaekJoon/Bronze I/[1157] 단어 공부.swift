guard let text = readLine()?.uppercased() else { fatalError() }
var dic = Dictionary<Character, Int>()

for char in text {
    if dic[char] == nil {
        dic[char] = 1
    } else {
        dic[char]! += 1
    }
}

let ans = dic
    .sorted { $0.value > $1.value }

if ans.count < 2 {
    print(ans[0].key)
} else if ans[0].value == ans[1].value {
    print("?")
} else {
    print(ans[0].key)
}
