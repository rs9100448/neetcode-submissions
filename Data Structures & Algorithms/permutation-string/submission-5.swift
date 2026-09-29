class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let m = s1.count
        let n = s2.count
        
        if m > n {
            return false
        }

        var s1Freq = [Character: Int]()
        var windFreq = [Character: Int]()
        var s2Arr = Array(s2)

        for s in s1 {
            s1Freq[s, default: 0] += 1
        }

        for i in 0..<m {
            windFreq[s2Arr[i], default: 0] += 1
        } 

        if s1Freq == windFreq {
            return true
        }

        for right in m..<n {
            
            windFreq[s2Arr[right], default: 0] += 1

            let left = right - m
            windFreq[s2Arr[left], default: 0] -= 1
            
            if windFreq[s2Arr[left]] == 0 {
                windFreq.removeValue(forKey: s2Arr[left])
            }

            if windFreq == s1Freq {
                return true
            }

        }
        return false
    }
}