# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} head
# @return {Boolean}
def hasCycle(head)
    @visited = {}
    node = head
    while !@visited[node]
        check_next(node)
        if !node || !node.next
            return false
        else
            node = node.next
        end
    end
    return true
end
    
def check_next(node)
    @visited[node] = true
    
end