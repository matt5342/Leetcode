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
def swap_pairs(head)
    return head if !head || !head.next
    next_node, next_section = head.next, head.next.next
    next_node.next = head
    head_next = swap_pairs(next_section)
    head.next = head_next
    next_node
end