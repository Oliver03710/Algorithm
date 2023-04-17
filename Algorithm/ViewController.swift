//
//  ViewController.swift
//  Algorithm
//
//  Created by Junhee Yoon on 2023/04/13.
//

import UIKit

final class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        queue()
    }
    
    func testForStack() {
        var stack = Stack<Int>()

        // 스택 마지막에 데이터 추가
        stack.push(1)   // [1]
        stack.push(2)   // [1, 2]
        stack.push(4)   // [1, 2, 4]
        stack.push(10)  // [1, 2, 4, 10]

        // 스택 마지막 데이터 추출하며 배열에서 제거
        _ = stack.pop()!    // 10
        print(stack)    // [1, 2, 4]

        // 스택 마지막 데이터를 확인하지만 배열에서 제거하지 않음
        _ = stack.peak()!   // 4
        print(stack)    // [1, 2, 4]
    }
    
    func testForLinkedList() {
        var linkedList = LinkedList<Int>(head: Node(value: 1, next: nil))
        print(linkedList.head!.value)   // 1
        print(linkedList.tail!.value)   // 1

        linkedList.append(Node(value: 10, next: nil))
        print(linkedList.head!.value)   // 1
        print(linkedList.tail!.value)   // 10
        print(linkedList.size())        // 2

        print(linkedList.firstIndex(of: 1)!)         // 0
        print(linkedList.findNode(at: 1)!.value)    // 10
        linkedList.append(Node(value: 20, next: nil))
        linkedList.append(Node(value: 40, next: nil))
        linkedList.append(Node(value: 100, next: nil))
        print(linkedList.size())    // 5

        linkedList.remove(at: 2)
        print(linkedList.head!.value)   // 1
        print(linkedList.tail!.value)   // 100
        print(linkedList.size())        // 4
    }
    
    func queue() {
        var queue = Queue<Int>()
        queue.enqueue(1)
        queue.enqueue(2)
        queue.enqueue(3)
        
        print(queue.count)          // 3
        print(queue.isEmpty)        // false
        
        print(queue.dequeue()!)     // 1
        print(queue.dequeue()!)     // 2
        
        queue.enqueue(4)
        queue.enqueue(5)
        print(queue.count)          // 5
        print(queue.dequeue()!)     // 3
    }
}

