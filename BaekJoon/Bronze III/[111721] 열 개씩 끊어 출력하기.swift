let n = readLine()!

var answer = ""
n.forEach { char in
    if answer.count < 10 {
        answer += String(char)
    } else {
        print(answer)
        answer = ""
        answer += String(char)
    }
}

if !answer.isEmpty {
    print(answer)
}
