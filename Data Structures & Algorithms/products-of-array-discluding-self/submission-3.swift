class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        // return productExceptSelfBruteForce(nums)
    let n = nums.count
    var result = Array(repeating: 0, count: n)

    var leftProd = 1
    for i in 0..<n {
        result[i] = leftProd
        leftProd *= nums[i]
    }
    var rightProd = 1
    for i in stride(from: n - 1, through: 0, by: -1) {
        result[i] *= rightProd
        rightProd *= nums[i]
    }
    
    return result
}

    func productExceptSelfBruteForce(_ nums: [Int]) -> [Int] {
        var res = Array(repeating: 1, count: nums.count)

        for i in 0..<nums.count {
            var product = 1
            for j in 0..<nums.count {
                if i != j {
                    product *= nums[j]
                }
            }
            res[i] = product
        }
        return res
    }
}

