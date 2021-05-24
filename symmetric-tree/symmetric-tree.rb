# Definition for a binary tree node.
# class TreeNode
#     attr_accessor :val, :left, :right
#     def initialize(val = 0, left = nil, right = nil)
#         @val = val
#         @left = left
#         @right = right
#     end
# end
# @param {TreeNode} root
# @return {Boolean}
def is_symmetric(root)

    next_same(root.left, root.right)

end

def next_same(p, q)
    if !p && !q
        return true
    elsif !p || !q || p.val != q.val
        return false
    end
    next_same(p.left, q.right) && next_same(p.right, q.left)
end