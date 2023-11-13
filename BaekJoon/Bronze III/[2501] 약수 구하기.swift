let input = readLine()!
    .split(separator: " ")
    .compactMap { Int(String($0)) }

var (n, k) = (input[0], input[1])
var ans = Array<Int>()

for i in 1...n {
    if n % i == 0 {
        ans.append(i)
    }
}

print(k > ans.count ? 0 : ans[k - 1])
