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
   func reverseList(_ list: ListNode?) -> ListNode?{
        return reverseListBruteforce(list)
    }
}

func reverseListOptimize(_ list: ListNode?) -> ListNode?{
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


func reverseListBruteforce(_ list: ListNode?) -> ListNode? {
    var values = [Int]()
    var current = list

    while let node = current {
        values.append(node.val)
        current = node.next
    }

    current = list

    while let node = current {
        node.val = values.removeLast()
        current = node.next
    }

    return list

}









