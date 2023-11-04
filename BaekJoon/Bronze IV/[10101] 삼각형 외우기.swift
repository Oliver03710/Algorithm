let a = Int(readLine()!)!
let b = Int(readLine()!)!
let c = Int(readLine()!)!

var isEquilateral: Bool {
    a == 60 && b == 60 && c == 60
}

var isIsosceles: Bool {
    a + b + c == 180 && (a == b || b == c || a == c)
}

var isScalene: Bool {
    a + b + c == 180 && a != b && b != c && a != c
}

var isError: Bool {
    a + b + c != 180
}

if isEquilateral {
    print("Equilateral")
} else if isIsosceles {
    print("Isosceles")
} else if isScalene {
    print("Scalene")
} else if isError {
    print("Error")
}
