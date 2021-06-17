# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {Boolean}
def is_palindrome(head)
    arr = []
    while head.next != nil
        arr.push(head.val)
        head = head.next
    end
    arr.push(head.val)
    return true if arr.reverse == arr
    false
        
end