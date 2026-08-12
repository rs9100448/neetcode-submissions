class Solution {
    func maxProfit(_ prices: [Int]) -> Int {
        var maximum = 0
        var i = 0
        var j = i + 1
        let n = prices.count
        while(j < n) {
            let diff = prices[j] - prices[i]
            if diff > 0 {
                maximum = max(maximum, diff)
                j += 1
            }else {
              i = j
              j += 1  
            }
        }
        return maximum
    }
}
