class Solution {
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        let m = s1.count
        let n = s2.count
        
        guard n >= m else {
            return false
        }

        var s1Freq = [Character: Int]()
        var s2Arr = Array(s2)

        for s in s1 {
            s1Freq[s, default: 0] += 1
        }

        for i in 0...(n-m) {
            var windFreq = [Character: Int]()

            for j in i..<(i+m) {
                windFreq[s2Arr[j], default: 0] += 1
            }

            if windFreq == s1Freq {
                return true
            }

        }
        return false
    }
}

// func permutateString(_ char: [Character], _ currString: String) {
        //     if char.isEmpty {
        //         possibleString.append(currString)
        //         return
        //     }

        //     for i in 0..<char.count {
        //         var remaining = char
        //         let next = remaining.remove(at: i)
        //         permutateString(remaining, (currString + String(next)))
        //     }
        // }

        // permutateString(char, "")

        // for i in possibleString {
        //    if s2.contains(i) {
        //     return true
        //    }
        // }
        // return false    