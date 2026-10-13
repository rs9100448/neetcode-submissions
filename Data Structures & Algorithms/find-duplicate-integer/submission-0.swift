class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var tempDict = [Int:Int]()
        var l = 0
        while l < nums.count {
            if let num = tempDict[nums[l]] {
                return nums[l] 
            }
            tempDict[nums[l], default: 0] += 1
            l += 1
        }
        return -1
    }
}
