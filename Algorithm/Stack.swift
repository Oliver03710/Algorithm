//
//  Stack.swift
//  Algorithm
//
//  Created by Junhee Yoon on 2023/04/13.
//

import Foundation

struct Stack<T> {
    private var elements = Array<T>()
    var isEmpty: Bool { return elements.isEmpty }
    var count: Int { return elements.count }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    func peak() -> T? {
        return elements.last
    }
}
