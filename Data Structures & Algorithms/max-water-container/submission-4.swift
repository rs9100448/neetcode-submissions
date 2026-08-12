class Solution {
    func maxArea(_ heights: [Int]) -> Int {
        var maxArea = 0
        var i = 0 
        let n = heights.count
        var j = n-1
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
}
