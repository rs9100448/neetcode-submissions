class Solution {
    func twoSum(_ numbers: [Int], _ target: Int) -> [Int] {
        var dict = [Int: Int]()
        for (index, value) in numbers.enumerated() {
            dict[value] = index
        }
        var i = 0
        while i < numbers.count {
            let diff = target - numbers[i] 
            if let j = dict[diff] {
                return [i+1, j+1]
            }
            i += 1
        }
        return []

    }


    func twoSumBruteforce(_ numbers: [Int], _ target: Int) -> [Int]{
        for i in 0..<numbers.count {
            for j in i..<numbers.count {
                if numbers[i] + numbers[j] == target {
                    return [i+1, j+1]
                }
            }
        }
        return []
    }


}
