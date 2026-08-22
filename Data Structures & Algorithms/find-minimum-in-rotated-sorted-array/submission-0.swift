class Solution {
    func findMin(_ nums: [Int]) -> Int {
        let n = nums.count-1
        var l = 0
        var r = n

        while l < r {
            var m = (l + r)/2
            if nums[m] > nums[r] {
                l = m+1
            }else {
                r = m
            }
        }
    return nums[l]
    }
}
