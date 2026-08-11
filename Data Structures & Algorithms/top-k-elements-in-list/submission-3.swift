class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
       guard nums.count >= k else {
        return []
    }
    var tempDict = [Int: Int]()
    for (index, item) in nums.enumerated() {
        tempDict[item, default: 0] += 1
    }
    let sortedArr = tempDict.sorted(by: {$0.value > $1.value })
    return sortedArr.prefix(k).map(\.key)

    }
}
