class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        if s.count != t.count {
            return false
        }
    var sDict = [Character: Int]()
    for sChar in s {
        sDict[sChar, default: 0] += 1
    }
    
    var tDict = [Character: Int]()
    for tChar in t {
        tDict[tChar, default: 0] += 1
    }

    return tDict == sDict
    }
}
