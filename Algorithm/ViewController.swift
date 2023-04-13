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
        testForStack()
    }
    
    func testForStack() {
        var stack = Stack<Int>()
        
        // 스택 마지막에 데이터 추가
        stack.push(1)   // [1]
        stack.push(2)   // [1, 2]
        stack.push(4)   // [1, 2, 4]
        stack.push(10)  // [1, 2, 4, 10]
        
        // 스택 마지막 데이터 추출하며 배열에서 제거
        stack.pop()!    // 10
        print(stack)    // [1, 2, 4]
        
        // 스택 마지막 데이터를 확인하지만 배열에서 제거하지 않음
        stack.peak()!   // 4
        print(stack)    // [1, 2, 4]
    }
}

