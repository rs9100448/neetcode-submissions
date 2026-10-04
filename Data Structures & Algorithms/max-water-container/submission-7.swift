class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        // return maxAreaBruteForce(heights)
        var maxArea = 0
        var i = 0 
        var j = heights.count-1
        while(i < j) {
            let area = (j-i) * min(heights[i], heights[j])
            maxArea = max(maxArea, area)
            if heights[i] < heights[j] {
                i += 1
            }else {
                j -= 1
            }
        }
        return maxArea
    }

    func maxAreaBruteForce(_ heights: [Int]) -> Int {
        var sum = 0 
        for i in 0..<heights.count {
            for j in (i+1)..<heights.count {
                let width = j-i
                let minHeight = min(heights[i], heights[j])
                let area = width*minHeight
                sum = max(sum, area)
            }
        }
        return sum

    }
}
