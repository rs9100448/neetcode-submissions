class Solution {
    func isValidSudoku(_ board: [[Character]]) -> Bool {

        //Raw/Column  validate
            for i in 0..<9 {
            var rowSet = Set<Character>()
            var colSet = Set<Character>()
            for j in 0..<9 {
                let row = board[i][j]
                let col = board[j][i]
                if rowSet.contains(row) || colSet.contains(col) {
                    return false
                }
                if col != "." {
                    colSet.insert(col)
                }
                if row != "." {
                    rowSet.insert(row)
                }

                
            }
        }

    // Square Validate 

    let starting_position = [(0, 0), (0, 3), (0, 6),
                              (3, 0), (3,3), (3, 6),
                              (6, 0), (6,3), (6, 6)]


    for (start, end) in starting_position {
        var set = Set<Character>()
        for i in start..<(start+3) {
            for j in end..<(end+3) {
                let num = board[i][j]
                if set.contains(num) {
                    return false
                } 
                if num != "." {
                    set.insert(num)
                }
            }
        }
    }
    return true

    }
}
