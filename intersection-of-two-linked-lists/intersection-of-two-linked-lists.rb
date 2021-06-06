# Definition for singly-linked list.
# class ListNode
#     attr_accessor :val, :next
#     def initialize(val)
#         @val = val
#         @next = nil
#     end
# end

# @param {ListNode} headA
# @param {ListNode} headB
# @return {ListNode}
def getIntersectionNode(headA, headB)
    @visited = {}
    finalA = mark_nodes(headA)
    finalB = mark_nodes(headB)

    while !finalA && headA.next
        headA = headA.next
        finalA = mark_nodes(headA)
    end
    while !finalB && headB.next
        headB = headB.next
        finalB = mark_nodes(headB)
    end

    return finalA || finalB || nil
        
        
end

def mark_nodes(nodeA)
    if @visited[nodeA]
        return nodeA
    else
        @visited[nodeA] = true
        return false
    end
    
end

