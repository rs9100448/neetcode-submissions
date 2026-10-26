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
    func reverseKGroup(_ head: ListNode?, _ k: Int) -> ListNode? {
        guard let head = head, k > 1 else {
            return head
        } 
        let dummy = ListNode(0)
        dummy.next = head
        var grpPrev: ListNode? = dummy 

        while true {
            //find the Kth element
            var kth = grpPrev
            for _ in 0..<k {
                kth = kth?.next
            }

            // fewer elements is remainig 

            guard let KthNext = kth else {
                break
            }

            let grpNext = KthNext.next
            let grpHead = grpPrev?.next

            var prev = grpNext
            var cur = grpHead

            while cur !== grpNext {
                let next = cur?.next
                cur?.next = prev
                prev = cur
                cur = next
            }

            // Reconnect the group
            grpPrev?.next = KthNext
            grpPrev = grpHead
        }

        return dummy.next
        
    }

    func reverse(_ list: ListNode?) -> ListNode? {
        var prev: ListNode?
        var cur = list
        while cur != nil {
            let next = cur?.next
            cur?.next = prev
            prev = cur
            cur = next
        } 
        return prev
    }
}
