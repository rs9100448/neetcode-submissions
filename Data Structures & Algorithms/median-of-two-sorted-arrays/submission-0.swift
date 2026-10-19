class Solution {
    func findMedianSortedArrays(_ nums1: [Int], _ nums2: [Int]) -> Double {
        // Merge two array
        // find the mid element based on odd/even list 

        let newArr = (nums1 + nums2).sorted() 
        print(newArr)
        let n = newArr.count
        let isOdd = n%2 != 0 
        var mid: Double = 0
        if isOdd {
            mid = Double(newArr[n/2])
        }else {
            let m = Double(newArr[n/2])
            let m1 = Double(newArr[n/2 - 1])
            mid =  (m + m1)/2
        }
        return mid

    }
}
