class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        // Merge two array
        // find the mid element based on odd/even list 
        return findMedianSortedArraysOptimise(nums1, nums2)
        // let newArr = (nums1 + nums2).sorted() 
        // let n = newArr.count
        // let isOdd = n%2 != 0 
        // var mid: Double = 0
        // if isOdd {
        //     mid = Double(newArr[n/2])
        // }else {
        //     let m = Double(newArr[n/2])
        //     let m1 = Double(newArr[n/2 - 1])
        //     mid =  (m + m1)/2
        // }
        // return mid

    }
func findMedianSortedArraysOptimise(_ nums1: [Int], _ nums2: [Int]) -> Double {
    precondition(!nums1.isEmpty || !nums2.isEmpty)

    if nums1.count > nums2.count {
        return findMedianSortedArraysOptimise(nums2, nums1)
    }    
    let m = nums1.count
    let n = nums2.count
    let leftSize = (m + n + 1)/2

    var low = 0
    var high = m 

    while low <= high {
        let cutA = low + (high - low) / 2
        let cutB = leftSize - cutA

        let leftA = cutA == 0 ? Int.min : nums1[cutA-1]
        let rightA = cutA == m ? Int.max : nums1[cutA]

        let leftB = cutB == 0 ? Int.min : nums2[cutB-1]
        let rightB = cutB == n ? Int.max : nums2[cutB]

        if leftA <= rightB && leftB <= rightA {
            if (m + n)%2 == 1 {
                return Double(max(leftA, leftB))
            }else {
                return (Double(max(leftA, leftB)) + Double(min(rightA, rightB)))/2.0
            }
        }
        if leftA > rightB {
            high = cutA - 1
        }else {
            low = cutA + 1
        }
    }
    preconditionFailure("Inputs must be sorted.")
}

}
