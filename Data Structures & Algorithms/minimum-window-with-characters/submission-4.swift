class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        if t.count > s.count {
            return ""
        }

        let sArr = Array(s)
        var result = ""

        var minLen = Int.max
        var tFreq = [Character: Int]()
        var windFreq = [Character: Int]()

        for c in t {
            tFreq[c, default: 0] += 1
        }
        var left = 0
        var minStart = 0

        var formed = 0
        let required = tFreq.count

        
        for right in 0..<s.count {
            let char = sArr[right]
            windFreq[char, default: 0] += 1

            if let requiredCount = tFreq[char], windFreq[char] == requiredCount {
                formed += 1
            }
            
            while formed == required {
                let currentWindow = right - left + 1
               
                if currentWindow < minLen {
                    minLen = currentWindow
                    minStart = left
                }

                let leftChar = sArr[left]
                windFreq[leftChar, default: 0] -= 1

                if let requiredCount = tFreq[leftChar], windFreq[leftChar,default: 0] < requiredCount {
                    formed -= 1
                } 


                left += 1 
            }
        }

        if minLen == Int.max {
            return ""
        }

        return String(sArr[minStart..<(minStart + minLen)])

    }
}


// func minWindow(_ s: String, _ t: String) -> String {
//         if t.count > s.count {
//             return ""
//         }
//         let sArr = Array(s)
//         var result = ""
//         var minLen = Int.max
//         var tFreq = [Character: Int]()
//         for c in t {
//             tFreq[c, default: 0] += 1
//         }

//         for i in 0..<s.count {

//             for j in i..<s.count {
//             var windFreq = [Character: Int]()

//             for k in i...j {
//                 windFreq[sArr[k], default: 0] += 1
//             }

//             var isValid = true

//             for (key, value) in tFreq {
//                 if windFreq[key, default: 0] < value {
//                     isValid = false
//                     break
//                 }
//             }

//             if isValid {
//                 let curr =  j-i+1
//                 if curr < minLen {
//                     minLen = curr
//                     result = String(sArr[i...j])
//                 }
                
                
//             }
//         }

//         }

//         return result
//     }
