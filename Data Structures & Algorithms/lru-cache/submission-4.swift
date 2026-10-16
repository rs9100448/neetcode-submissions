// class LRUCache {
//     private let capacity: Int
//     private var values: [Int: Int] = [:]
//     private var order: [Int] = []

//     init(_ capacity: Int) {
//         self.capacity = capacity
//     }

//     func get(_ key: Int) -> Int {
//         guard let value = values[key] else {
//             return -1
//         }
//         mostRecentlyUsed(key)
//         return value

//     }

//     func put(_ key: Int, _ value: Int) {
//         guard capacity > 0 else { return }
        
//         if values[key] != nil {
//             values[key] = value
//             mostRecentlyUsed(key)
//             return
//         }

//         if values.count == capacity {
//             let oldestKey = order.removeFirst()
//             values.removeValue(forKey: oldestKey)
//         }

//         values[key] = value
//         order.append(key)
//     }

//     private func mostRecentlyUsed(_ key: Int) {
//         if let index = order.firstIndex(of: key) {
//             order.remove(at: index)
//         }
//         order.append(key)
//     }
// }

class LRUCache {
    private let capacity: Int
    private var cache: [Int: ListNode] = [:]

    private let head = ListNode(0, 0)
    private let tail = ListNode(0, 0)

    init(_ capacity: Int) {
        self.capacity = capacity
        head.next = tail
        tail.prev = head 
    }

    func get(_ key: Int) -> Int {
        guard let node = cache[key] else {
            return -1
        }

        moveToFront(node)
        return node.value
    }

    func put(_ key: Int, _ value: Int) {
        guard capacity > 0 else { return }
        

        if let node = cache[key] {
            node.value = value
            moveToFront(node)
            return
        }

        let node = ListNode(key, value)
        cache[key] = node
        addToFront(node)

        if cache.count > capacity, let oldest = tail.prev {
                removeNode(oldest)
                cache.removeValue(forKey: oldest.key)
        }
    }

    private func moveToFront(_ node: ListNode) {
        removeNode(node)
        addToFront(node)
    }

    private func addToFront(_ node: ListNode) {
        let next = head.next

        node.prev = head
        node.next = next

        next?.prev = node
        head.next = node
    }

    private func removeNode(_ node: ListNode) {
        let prev = node.prev
        let next = node.next

        prev?.next = next
        next?.prev = prev

        node.prev = nil
        node.next = nil
    }

}

class ListNode {
    let key: Int
    var value: Int
    var next: ListNode?
    weak var prev: ListNode?

    init(_ key: Int, _ value: Int) {
        self.value = value
        self.key = key 
    }
}
