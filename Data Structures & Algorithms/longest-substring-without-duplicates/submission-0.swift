class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
     var l = 0
     var temp = Set<Character>()
     var arr = Array(s)
     var max_len = 0
     for (index, item) in arr.enumerated() {
             while temp.contains(item) {
                 temp.remove(arr[l])
                 l += 1
             }
         temp.insert(item)
         max_len = max(max_len, index-l+1)
     }
     return max_len
 }
}
