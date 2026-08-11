class Solution {
    func isPalindrome(_ s: String) -> Bool {
    if s.isEmpty {
        return true
    }
    
    let str = Array(s.filter { $0.isLetter || $0.isNumber}.lowercased())
    var i = 0
    var j = str.count-1
    while (i < j) {
        if str[i] != str[j] {
            return false
        }
        i += 1
        j -= 1
    }
    return true
}
}
