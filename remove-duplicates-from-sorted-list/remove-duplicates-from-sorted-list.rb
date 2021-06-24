# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} head
# @return {ListNode}
def delete_duplicates(head)
    arr = []
    return head if !head || !head.next
    while head
        arr.push(head.val)
        head = head.next
    end

    arr.uniq!
    arr.sort!

end