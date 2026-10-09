class Solution {
    func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {

        for arr in matrix {
            for i in arr {
                if i == target {
                    return true
                }
            }
        }

        return false
    }
}
