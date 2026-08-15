class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        guard !s.isEmpty else { return 0 } 
        let arr = Array(s)
        var maxFreq = 0 
        var i = 0
        var winSize = 0
        let n = arr.count-1

        var temp = [Character: Int]()
        for (index, item) in arr.enumerated() {
            temp[item, default: 0] += 1
            maxFreq = max(maxFreq, temp[item] ?? 0)
            if ((index-i+1) - maxFreq) > k {
                temp[arr[i], default: 0] -= 1
                i += 1
            }
            winSize = max(winSize, index-i+1)
        }
        return winSize
    }
}
