guard let dishes = readLine() else { fatalError() }
var heights = 0
var previousDish = ""

for dish in dishes {
    let dish = String(dish)
    
    if previousDish == dish {
        heights += 5
        
    } else {
        heights += 10
        previousDish = dish
    }
}

print(heights)
