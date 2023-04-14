//
//  LinkedList.swift
//  Algorithm
//
//  Created by Junhee Yoon on 2023/04/14.
//

import Foundation

final class LinkedList<T: Equatable> {
    var head: Node<T>?  // 연결리스트의 가장 첫번째 요소를 가리키는 프로퍼티
    var tail: Node<T>?  // 연결리스트의 마지막 요소를 가리키는 프로퍼티
    
    init(head: Node<T>?) {
        self.head = head
        self.tail = head
    }
    
    // 연결리스트의 크기 구하는 메서드
    func size() -> Int {
        // head가 nil일 경우 노드가 없으므로 0 반환
        guard var node = self.head else { return 0 }
        
        var count = 1
        
        // 연결리스트의 head부터 next노드를 탐색하면서 카운트를 올림
        // next가 nil에 도달시 카운트 반환
        while node.next != nil {
            count += 1
            node = node.next!
        }
        
        return count
    }
    
    // 특정 위치에 있는 노드를 반환 (찾고자 하는 위치가 리스트의 크기보다 클 경우, nil 반환)
    func findNode(at index: Int) -> Node<T>? {
        // head가 nil일 경우 노드가 없으므로 0 반환
        guard var node = self.head else { return nil }
        
        // 1부터 index값까지 반복문을 통해 노드의 next를 계속 탐색
        for _ in 1...index {
            // node의 next가 nil일 경우 index 위치 도달 전 리스트가 끝났으므로 nil 반환
            guard let nextNode = node.next else { return nil }
            
            node = nextNode
        }
        // 반복문 종료시 찾은 노드를 반환
        return node
    }
    
    // 연결리스트의 맨 뒤에 새로운 노드를 추가
    func append(_ newNode: Node<T>) {
        if let tail = self.tail {
            // tail이 nil이 아닐 경우 현재 tail의 next를 nextNode로 교체
            tail.next = newNode
            // 현재 tail을 다음 노드의 tail로 교체
            self.tail = tail.next
            
        } else {
            // tail이 nil인 경우 head도 nil이므로 모두 newNode 저장
            self.head = newNode
            self.tail = newNode
        }
    }
    
    // 특정 위치에 새로운 노드 삽입 (삽입하고자 하는 위치가 리스트의 크기보다 클 경우 가장 마지막에 삽입)
    // 연결 리스트에서 노드 삽입하기 위해서 삽입할 위치보다 한 칸 앞에 있는 노드를 찾은 후 해당 노드의 next에 삽입할 노드 추가
    func insert(_ newNode: Node<T>, at index: Int) {
        // head가 nil일 경우 head와 tail 모두 newNode 저장
        if self.head == nil {
            self.head = newNode
            self.tail = newNode
            return
        }
        
        // index - 1 위치의 노드를 찾지 못하면 연결리스트 가장 뒤에 새로운 노드 추가
        guard let frontNode = findNode(at: index - 1) else {
            self.tail?.next = newNode
            self.tail = newNode
            return
        }
        
        // index - 1 위치의 노드 다음이 nil일 경우 index - 1 위치의 노드가 tail 이라는 뜻
        // index - 1 위치의 노드 뒤에 새로운 노드를 붙여주고 tail을 새로운 노드로 갱신
        guard let nextNode = frontNode.next else {
            frontNode.next = newNode
            self.tail = newNode
            return
        }
        
        // index 위치의 노드는 새로운 노드의 다음으로 붙임
        // 새로운 노드는 index - 1 위치의 노드의 다음으로 붙임
        newNode.next = nextNode
        frontNode.next = newNode
    }
    
    // 특정 위치에 있는 노드 삭제 (삭제하고자 하는 위치가 리스트의 크기보다 클 경우 아무 동작하지 않음)
    // insert와 마찬가지로 삭제하려고 하는 위치보다 한 칸 앞에 있는 노드 먼저 찾음
    // 한 칸 앞의 노드의 next에 지우려고 하는 노드의 next를 연결 시킴
    // Swift의 삭제하려고 하는 노드의 메모리 해제는 신경쓰지 않아도 됨
    func remove(at index: Int) {
        // index - 1 위치의 노드를 찾을 수 없는 경우 아무 동작하지 않음
        guard let frontNode = findNode(at: index - 1) else { return }
        
        // index - 1 위치의 노드가 마지막 노드인 경우 아무 동작하지 않음
        guard let removeNode = frontNode.next else { return }
        
        // index 위치의 노드가 마지막 노드인 경우 tail에 frontNode를 저장
        guard let nextNode = removeNode.next else {
            frontNode.next = nil
            self.tail = frontNode
            return
        }
        
        // index 위치의 노드가 마지막 노드가 아닌 경우
        frontNode.next = nextNode
    }
    
    // 특정 값을 가지는 노드를 포함하고 있는지 탐색 후, Bool값 반환
    // 연결리스트에 찾고자 하는 값과 node.value값이 같은 노드가 있으면 true 반환
    // 모든 노드를 반복문으로 탐색하면서 node.value와 parameter의 value를 비교
    func contains(_ value: T) -> Bool {
        guard var node = self.head else { return false }
        
        while true {
            // 여기서 에러가 발생하는데 Generic T는 equal(==) 연산을 할 수 없기 때문
            // 스위프트 모든 기본 타입은 == 연산이 사용가능한데 Equatable Protocol을 준수하고 있기 때문
            // <T: Equatable>로 제약조건을 주면 해결됨
            if node.value == value {
                return true
            }
            
            guard let next = node.next else { return false }
            node = next
        }
    }
    
    // 특정 값을 가지는 노드의 옵셔널 index 값을 반환
    // 반복문을 돌 때마다 count를 증가시켜 원하는 값을 찾았을 때 count를 반환
    // 값을 찾을 수 없다면 nil 반환
    func firstIndex(of value: T) -> Int? {
        guard var node = self.head else { return nil }
        
        var count = 0
        while true {
            if node.value == value {
                return count
            }
            
            guard let next = node.next else { return nil }
            node = next
            count += 1
        }
    }
}
