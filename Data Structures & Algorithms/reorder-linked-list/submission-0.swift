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
    func reorderList(_ head: ListNode?) {
        var slow = head
        var fast = head?.next
        var l1 : ListNode?
        var l2 : ListNode?

        while fast != nil || fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        l2 = reverseList(slow?.next)
        slow?.next = nil
        l1 = head
        var cur = head
        while (l1 != nil && l2 != nil) {
            l1 = l1?.next
            cur?.next = l2
            cur = cur?.next
            l2 = l2?.next
            cur?.next = l1
            cur = l1
        }
    }

    func reverseList(_ list: ListNode?) -> ListNode?{
        var prev : ListNode?
        var head = list
        while head != nil {
            let curr = head?.next
            head?.next = prev
            prev = head
            head = curr
        }
        return prev
    }


}
