class Solution {
    func dailyTemperatures(_ temperatures: [Int]) -> [Int] {
        let n = temperatures.count
        var res = Array(repeating: 0, count: n)
        var stack = [Int]()
        for i in (0..<n) {
            while let last = stack.last, temperatures[i] > temperatures[last] {
                    let l = stack.removeLast()
                    res[last] = i - last
                }
            stack.append(i)
        }
        return res
    }
    
}

