//
//  Queue.swift
//  Algorithm
//
//  Created by Junhee Yoon on 2023/04/17.
//

import Foundation

// Queue에서 dequeue하는 작업에서 오버헤드 발생
// dequeue할 때 배열을 앞당기는 작업 최소화
struct Queue<T> {
    private var queue: [T?] = []
    
    // 실제 배열의 Head를 삭제하는 것이 아닌
    // 현재 Head를 가리키고 있는 포인트를 변경시켜
    // dequeue가 호출될 때마다 하던 배열의 삭제 작업을 하지 않는 것
    // 더이상 필요없는 dequeue된 element를 nil로 만들어줌
    // head가 dequeue될 때 반환할 element의 index를 가지고 있음
    private var head: Int = 0
    
    var count: Int {
        return queue.count
    }
    
    var isEmpty: Bool {
        return queue.isEmpty
    }
    
    mutating func enqueue(_ element: T) {
        queue.append(element)
    }
    
    // 호출할 때마다 element 삭제
    mutating func dequeue() -> T? {
        guard head <= queue.count, let element = queue[head] else { return nil }
        queue[head] = nil
        head += 1
        
        // nil을 계속 갖고 있게 되므로 적정 갯수 이상될 때 정리
        if head > 50 {
            queue.removeFirst(head)
            head = 0
        }
        
        return element
    }
}
