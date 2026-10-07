class Solution {
    func combinationSum2(_ candidates: [Int], _ target: Int) -> [[Int]] {
        let nums = candidates.sorted()
        var curr = [Int]()
        var res = [[Int]]()

        func backtracking(_ start: Int, _ target: Int) {
            if target == 0 {
                res.append(curr)
                return
            }

            for i in start..<nums.count {
                if i > start && nums[i] == nums[i-1] {
                    continue
                }

                let v = nums[i]
                if v > target {
                    continue 
                }
                curr.append(v)
                backtracking(i+1, target-v)
                curr.removeLast()

            }
        } 
    backtracking(0, target)
    return res

    }
}
