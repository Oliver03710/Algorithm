//
//  Node.swift
//  Algorithm
//
//  Created by Junhee Yoon on 2023/04/14.
//

import Foundation

final class Node<T> {
    var value: T    // 해당 노드가 갖는 유의미한 값을 저장하는 프로퍼티
    var next: Node<T>?  // 해당 노드 다음에 이어질 노드를 가리키는 프로퍼티, 옵셔널이며 뒤에 아무노드도 없을 경우 nil
    
    init(value: T, next: Node<T>?) {
        self.value = value
        self.next = next
    }
}
