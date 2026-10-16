class LRUCache {
    private let capacity: Int
    private var values: [Int: Int] = [:]
    private var order: [Int] = []
    init(_ capacity: Int) {
        self.capacity = capacity
    }

    func get(_ key: Int) -> Int {
        guard let value = values[key] else {
            return -1
        }
        mostRecentlyUsed(key)
        return value

    }

    func put(_ key: Int, _ value: Int) {
        guard capacity > 0 else { return }
        
        
        if values[key] != nil {
            values[key] = value
            mostRecentlyUsed(key)
            return
        }

        if values.count == capacity {
            let oldestKey = order.removeFirst()
            values.removeValue(forKey: oldestKey)
        }

        values[key] = value
        order.append(key)
    }

    private func mostRecentlyUsed(_ key: Int) {
        if let index = order.firstIndex(of: key) {
            order.remove(at: index)
        }
        order.append(key)
    }
}

class ListNode {
    var val: [Int: Int]
    var next: ListNode?

    init(_ val: [Int: Int], _ next: ListNode? = nil){
        self.val = val
        self.next = next 
    }
}
