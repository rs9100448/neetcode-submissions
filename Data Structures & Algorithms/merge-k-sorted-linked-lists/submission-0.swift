/**
 * Definition for singly-linked list.
 * class ListNode {
 *     var val: Int
 *     var next: ListNode?
 *     init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */

class Solution {
    func mergeKLists(_ lists: [ListNode?]) -> ListNode? {
        // Merge 2 sorted linked list into one sorted linked list
        // Conquer the sorted sorted list in one
        print(lists.count)
        if lists.isEmpty {
            return nil
        }

        return mergeHelper(lists, 0, lists.count-1)
        // mergeHelper for Conquer

        // merge Two list
    }

    func mergeHelper(_ lists: [ListNode?], _ start:  Int, _ end: Int) -> ListNode? {
        if start == end {
            return lists[start]
        }

        if start == (end-1) {
            return mergeTwoList(lists[start], lists[end])
        }

        let mid = start + (end - start)/2
        let left = mergeHelper(lists, start, mid)
        let right = mergeHelper(lists, mid + 1, end)
        return mergeTwoList(left, right)
    }


    func mergeTwoList(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        let dummy:ListNode? = ListNode(0)
        var cur = dummy
        var list1 = l1
        var list2 = l2
        while(list1 != nil && list2 != nil) {
            if (list1?.val ?? 0) > (list2?.val ?? 0) {
                cur?.next = list2
                list2 = list2?.next
            }else {
                cur?.next = list1
                list1 = list1?.next
            }
            cur = cur?.next
        }
        cur?.next = list1 == nil ? list2 : list1
        return dummy?.next
    }
}
