class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        var tempDict = [String: [String]]()

        for item in strs {
            let key = item.sorted()
            if tempDict[String(key)] != nil {
                tempDict[String(key)]?.append(item)
            }else {
               tempDict[String(key)] = [item] 
            }
        }
        return tempDict.values.map { $0}
    }
}
