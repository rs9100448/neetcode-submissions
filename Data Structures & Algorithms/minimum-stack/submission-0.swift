class MinStack {
    var stack = [Int]()
    var minStack = [Int]()
    init() {

    }

    func push(_ val: Int) {
        stack.append(val)
        var curr = val
        if let last = minStack.last {
            curr = min(curr, last)
        }
         minStack.append(curr)   
    }

    func pop() {
        stack.removeLast()
        minStack.removeLast()
    }

    func top() -> Int {
        return stack.last ?? 0
    }

    func getMin() -> Int {
        return minStack.last ?? 0
    }
}
