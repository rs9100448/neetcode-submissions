class Solution {
    func isValid(_ s: String) -> Bool {
        guard s.count > 1 else {return false}
         let arr = Array(s)
        var temp = [Character]()
        for char in arr {
        switch char {
        case "(":
            temp.append(")")
        case "{":
            temp.append("}")
        case "[":
            temp.append("]")
        case "}", ")", "]":
            if let last = temp.last, last == char {
                temp.removeLast()
            }else {
                return false
            }
        default:
            break
            }
        }
        
    return temp.isEmpty
    }
}
