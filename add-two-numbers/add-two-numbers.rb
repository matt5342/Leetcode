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
def add_two_numbers(l1, l2)
    
    num = get_num(l1) + get_num(l2)
    num = num.to_s.split('').reverse
    num_arr = []
    num.each do |n|
        num_arr.push(n.to_i)
    end
    num_arr
    # current = ListNode.new
    # after = ListNode.new
    # while num != 0
    #     current.val = (num % 10)
    #     if num / 10 != 0
    #         num /= 10
    #         after.val = num % 10
    #         current.next = after
    #         current = after
    #     else
    #         num /= 10
    #     end
    # end
    # puts current
    # puts l1.next
end

def get_num(list)
    list_arr = []
    while list
        list_arr.push(list.val)
        list = list.next
    end
    list_arr.reverse.join.to_i
end