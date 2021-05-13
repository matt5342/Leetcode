# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val = 0, _next = nil)
#         @val = val
#         @next = _next
#     end
# end
# @param {ListNode} l1
# @param {ListNode} l2
# @return {ListNode}
def merge_two_lists(l1, l2)
    arr = []
    while l1
        arr.push(l1.val)
        l1 = l1.next
    end
    while l2
        arr.push(l2.val)
        l2 = l2.next
    end
        return arr.sort
        
end
