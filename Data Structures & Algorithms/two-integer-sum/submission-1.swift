class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var tempDict = [Int: Int]()
        for (index, item) in nums.enumerated() {
            tempDict[item] = index
        }
        let count = nums.count - 1
        var i = 0 
        while i < count {
            let diff = target - nums[i]
            if let index = tempDict[diff], index != i {
                return [i, index]
            }
            i += 1
        }
        return []
    }
}
