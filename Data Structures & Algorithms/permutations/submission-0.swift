class Solution {
    func permute(_ nums: [Int]) -> [[Int]] {
        return permuteOptimise(nums)
        // var res = [[Int]]()
        // var cur = [Int]()
        // var used = Array(repeating: false, count: nums.count)
        // var count = 0
        // func backtracking() {
        //     count += 1
        //     if cur.count == nums.count {
        //         res.append(cur)
        //         return
        //     }

        //     for i in nums.indices {
        //         if used[i] {
        //             continue 
        //         }
        //         used[i] = true
        //         cur.append(nums[i])

        //         print(count, cur)

        //         backtracking()

        //         cur.removeLast()
        //         used[i] = false
        //         print(count, cur)
        //     }
        // }
        // backtracking()
        // return res
    }

     func permuteOptimise(_ nums: [Int]) -> [[Int]] {
        var numbers = nums
        var res = [[Int]]()
        var count = 0
        func backtracking(_ start: Int) {
            count += 1
            if start == numbers.count {
                res.append(numbers)
                return
            }

            for i in start..<numbers.count {
                numbers.swapAt(start, i)
                backtracking(start+1)
                numbers.swapAt(start, i)
            }
        }
        backtracking(0)
        return res
    }
}
