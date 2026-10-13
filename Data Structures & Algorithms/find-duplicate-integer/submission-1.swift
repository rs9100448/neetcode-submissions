class Solution {
    func findDuplicate(_ nums: [Int]) -> Int {
        var slow = 0
        var fast = 0

        while true {
            slow = nums[slow]
            fast = nums[nums[fast]]
            if slow == fast {
                break
            }
        }

        slow = 0
        while slow != fast {
            slow = nums[slow]
            fast = nums[fast]
        }
        return slow
    }

    func findDuplicate1(_ nums: [Int]) -> Int {
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
