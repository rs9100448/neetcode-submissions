class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var tempDict = [String: [String]]()

        for item in strs {
            let key = item.sorted()
            tempDict[String(key), default: []].append(item)
        }
        return tempDict.values.map { $0}
    }
}
