class Solution {
    func trap(_ height: [Int]) -> Int {
        let n = height.count
        var sum = 0
        var leftArr = Array(repeating: 0, count: n)
        var rightArr = Array(repeating: 0, count: n)

        leftArr[0] = height[0]
        for i in 1..<n {
            leftArr[i] = max(leftArr[i-1], height[i])
        }

        rightArr[n-1] = height[n-1]
        for i in stride(from: n-2, through: 0, by: -1) {
            rightArr[i] = max(rightArr[i+1], height[i])
        } 

        for i in 0..<n {
            let min = min(leftArr[i], rightArr[i]) - height[i]
            sum += min
        }

        return sum
    }
}
