class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
    let numSet = Set(nums)
    var len = 0
    
    for num in numSet {
        var count = 1
        if !numSet.contains(num-1) {
            while numSet.contains((num + count))  {
                count +=  1
                len = max(count, len)
            }
        }
        len = max(count, len)
    }
    return len

    }
}
