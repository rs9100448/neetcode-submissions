class Solution {
    func trap(_ height: [Int]) -> Int {
        return trapTwoPoint(height)
        // let n = height.count
        // var sum = 0
        // var leftArr = Array(repeating: 0, count: n)
        // var rightArr = Array(repeating: 0, count: n)

        // leftArr[0] = height[0]
        // for i in 1..<n {
        //     leftArr[i] = max(leftArr[i-1], height[i])
        // }
        

        // rightArr[n-1] = height[n-1]
        // for i in stride(from: n-2, through: 0, by: -1) {
        //     rightArr[i] = max(rightArr[i+1], height[i])
        // } 

        // for i in 0..<n {
        //     let min = min(leftArr[i], rightArr[i]) - height[i]
        //     sum += min
        // }

        // return sum
    }

    func trapTwoPoint(_ height: [Int]) -> Int {
        var l = 0
        var r = height.count-1
        var lMax = 0
        var rMax = 0
        var tw = 0
        while l < r {
            if height[l] <= height[r] {
                lMax = max(lMax, height[l]) 
                tw += lMax-height[l]
                l += 1
            }else {
                rMax = max(rMax, height[r]) 
                tw += rMax-height[r]
                r -= 1
            }
        }
        return tw
    }
}
