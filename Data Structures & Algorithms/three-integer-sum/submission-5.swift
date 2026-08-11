class Solution {
   func threeSum(_ nums: [Int]) -> [[Int]] {
    let sortedArr = nums.sorted()
    var result = Set<[Int]>()
    
    for i in 0..<sortedArr.count - 1 {
        var j = i + 1
        var k = nums.count - 1
        while (j < k ) {
            let sum = sortedArr[i] + sortedArr[j] + sortedArr[k]
            if sum > 0 {
                k -= 1
            }else if sum < 0{
                j += 1
            }else {
                result.insert([sortedArr[i], sortedArr[j], sortedArr[k]])
                j += 1
                k -= 1
            }
            
        }
    }
    return Array(result)
    }
}