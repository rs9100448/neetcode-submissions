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
    func hasCycle(_ head: ListNode?) -> Bool {
        return hasCycleBruteForce(head)
        // var slow = head
        // var fast = head
        // while fast != nil && fast?.next != nil {
        //     slow = slow?.next
        //     fast = fast?.next?.next
        //     if fast === slow {
        //         return true
        //     }
        // }
        // return false
    }

    func hasCycleBruteForce(_ head: ListNode?) -> Bool {
        var visites = [ListNode]()
        var cur = head

        while let node = cur {
            if visites.contains{ $0 === node} {
                return true
            }
            visites.append(node)
            cur = node.next

        }
        return false
    }  
}
