var buggerPrices = Array<Int>()
var drinkPrices = Array<Int>()

(0..<3).forEach { _ in
    let price = Int(readLine()!)!
    buggerPrices.append(price)
}

(0..<2).forEach { _ in
    let drink = Int(readLine()!)!
    drinkPrices.append(drink)
}

let cal = buggerPrices.sorted()[0] + drinkPrices.sorted()[0] - 50
print(cal)
