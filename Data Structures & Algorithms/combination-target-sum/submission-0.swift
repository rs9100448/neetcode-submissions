class Solution {
    func combinationSum(_ nums: [Int], _ target: Int) -> [[Int]] {
        var curr = [Int]()
        var res = [[Int]]()

        func backtracking(_ start: Int, _ target: Int) {
            if target == 0 {
                res.append(curr)
                return
            }

            for i in start..<nums.count {
                let v = nums[i]
                if v > target {
                    continue 
                }
                curr.append(v)
                backtracking(i, target-v)
                curr.removeLast()

            }
        } 
    backtracking(0, target)
    return res

    }
}
