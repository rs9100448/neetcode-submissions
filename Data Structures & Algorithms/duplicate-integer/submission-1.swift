class Solution {
    func hasDuplicate(_ nums: [Int]) -> Bool {
        guard nums.count != 0 else {
            return false
        }
        var dict = [Int: Int]()
        for num in nums {
            if let n = dict[num] {
                return true
            }
            dict[num, default: 0] += 1 
        }
        return false
    }
}
