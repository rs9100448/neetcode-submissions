class MinStack {
    var stack = [(val: Int, min: Int)]()
    init() {

    }

    func push(_ val: Int) {
        let curr = min(val, stack.last?.min ?? val)
        stack.append((val, curr))  
    }

    func pop() {
        stack.removeLast()
    }

    func top() -> Int {
        return stack.last?.val ?? 0
    }

    func getMin() -> Int {
        return stack.last?.min ?? 0
    }
}
