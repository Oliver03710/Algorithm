let long = readLine()!.split(separator: "-")
var ans = ""

for word in long {
    ans += String(word.first!)
}

print(ans)
